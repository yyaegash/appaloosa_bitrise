require 'rubygems'
require 'http'
require 'json'
require 'aws-sdk-v1'

p "Ruby script"

# inputs
p ARGV[0]
ipa_stream = open(ARGV[0]).read

# add store + api-key
response = HTTP.accept(:json).get("http://lvh.me:3000/api/v1/secret_tests").to_s

# get credentials
json_values =  JSON.parse(response)
key = json_values['k']
secret = json_values['s']

# connect to s3
s3 = AWS::S3.new( :access_key_id => key, :secret_access_key => secret )

# upload to s3
obj = s3.buckets['appaloosa-integration'].objects["bitrise_test.ipa"].write(ipa_stream)

# get storage path
path = obj.url_for(:read, {}).to_s

p path

# download ipa
req = HTTP.post("http://lvh.me:3000/api/v1/1/applications/upload?api_key=vfhe4yt1kjcl9p6rhwi8jiymnfiqnw", :json => { :application => {"binary_path": "#{path}" } })
p req
# delete object s3
# obj.delete
