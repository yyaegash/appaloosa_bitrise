
require 'http'
require 'json'

puts '~~~~ assign environment varibles'

ipa_path = ENV['BITRISE_IPA_PATH']
api_key = ENV['APPALOOSA_API_KEY']
screenshot1 = ENV['SREENSHOT_1']
# screenshot2 = ENV['SREENSHOT2']
# screenshot3 = ENV['SREENSHOT3']
# screenshot4 = ENV['SREENSHOT4']
# screenshot5 = ENV['SREENSHOT5']
# icon = ENV['ICON']
# banner = ENV['BANNER']
# catchphrase = ENV['CATCHPHRASE']
# description = ENV['DESCRIPTION']



# params = { binary_path: 'http://127.0.0.1:8080/Infini.ipa', screenshot1:'http://127.0.0.1:8080/bender1.jpeg' }
# params = { "application": { "binary_path": "http://127.0.0.1:8080/Infini.ipa", "screenshot1": "http://127.0.0.1:8080/bender1.jpeg"}}
params = { :application => { :binary_path => "http://127.0.0.1:8080/Infini.ipa", :screenshot1 => "http://127.0.0.1:8080/bender1.jpeg"}}
		   			# 'screenshot2' => screenshot2,
		   			# 'screenshot3' => screenshot3,
		   			# 'screenshot4' => screenshot4,
		   			# 'screenshot5' => screenshot5,
		   			# 'icon' => icon,
		   			# 'banner' => banner,
		   			# 'catchphrase' => catchphrase,
		   			# 'description' => description
		  }
HTTP.post("http://www.lvh.me:3000/api/v1/1/applications/upload?api_key=#{api_key}",  :json => params )
