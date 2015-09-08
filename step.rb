puts '~~~~ assign environment varibles'

ipa_path = ENV['IPA_PATH']
api_key = ENV['API_KEY']
screenshot1 = ENV['SREENSHOT1']
screenshot2 = ENV['SREENSHOT2']
screenshot3 = ENV['SREENSHOT3']
screenshot4 = ENV['SREENSHOT4']
screenshot5 = ENV['SREENSHOT5']
icon = ENV['ICON']
banner = ENV['BANNER']
catchphrase = ENV['CATCHPHRASE']
description = ENV['DESCRIPTION']

require 'open-uri'
require 'net/http'


params = 	{ 'binary_path' => ipa_path,
		   			'screenshot1' => screenshot1,
		   			'screenshot2' => screenshot2,
		   			'screenshot3' => screenshot3,
		   			'screenshot4' => screenshot4,
		   			'screenshot5' => screenshot5,
		   			'icon' => icon,
		   			'banner' => banner,
		   			'catchphrase' => catchphrase,
		   			'description' => description
		  }
url = URI.parse("http://www.lvh.me:3000/api/v1/1/applications/upload?api_key=#{api_key}")
resp, data = Net::HTTP.post_form(url, params)
puts resp.inspect
puts data.inspect