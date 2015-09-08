require 'http'

puts '~~~~ assign environment varibles'

# ipa_path = ENV['BITRISE_IPA_PATH']
api_key = ENV['APPALOOSA_API_KEY']

p api_key

params = { :application => { :binary_path => "http://127.0.0.1:8080/Infini.ipa", :screenshot1 => "http://127.0.0.1:8080/bender1.jpeg"}}
HTTP.post("http://www.lvh.me:3000/api/v1/1/applications/upload?api_key=vfhe4yt1kjcl9p6rhwi8jiymnfiqnw",  :json => params )
