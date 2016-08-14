# require 'httparty'
# require 'json'
# require 'pp'

# # get '/' do 
# #  redirect 'https://accounts.spotify.com/authorize/?client_id=e638e9fda4624061ae4662923427484e&response_type=code&redirect_uri=http://localhost:9393/welcome&scope=user-top-read%20playlist-read-private%20playlist-read-collaborative%20user-read-private%20user-read-email'
# # end 

# post 'users/:user_id/playlists' 
# 	code = params[:code]
# 	p code
# 	p "*" * 50
# 	client_id = "e638e9fda4624061ae4662923427484e"
# 	client_secret = "b6259502255f40b396e91711ffbf0907"
# 	puts "got the code back!"
# 	p "*" * 50
# 	token_response = HTTParty.post("https://accounts.spotify.com/api/token", body: { grant_type:"authorization_code", code: code, redirect_uri: "http://localhost:9393/login", client_id: client_id, client_secret: client_secret }, header: { authorization: "code" })
# 	token = token_response["access_token"]
#  	p token
#  	p "*" * 50
#  	p token_response
#  	token_type = token_response["token_type"]
#  	p token_type
#  	p "*" * 50
#  	token_expires = token_response["expires_in"]
#  	p token_expires
#  	p "*" * 50
#  	p token
# 	# album_list = HTTParty.get("https://api.spotify.com/v1/albums?ids=382ObEPsp2rxGrnsizN5TX,2noRn2Aes5aoNVsU6iWThc&market=ES", header: { authorization: "token"})
# 	# p album_list
# 	p "*" * 50

# 	# other_stuff = HTTParty.get("https://api.spotify.com/v1/users/tadpulse/playlists/1sHTeNkXLYpPRja7vaf6Ks", headers: { "Authorization" => "Bearer " + token})

# 	# p other_stuff.parsed_response

# 	my_top = HTTParty.get("https://api.spotify.com/v1/me/top/tracks?limit=2", headers: { "Authorization" => "Bearer " + token})
	  
# 	p "*" * 50
# 	p "Return Artists"
# 	pp my_top['items']
# 	p "*" * 50
# 	p "Return song name"
# 	pp my_top["items"][0]["name"]
# 	p "*" * 50
# 	p "return some othee shit"
# 	pp my_top["items"][1]["name"]

# 	# my_favs = JSON.parse("#{my_top}", {:quirks_mode => true})
# 	# p my_favs
# 	# p "*" * 50
# 	# p my_favs.inspect
# 	# p "*" * 50
# 	# @favs_hash = eval(my_favs)
# 	# p @favs_hash
# 	# p "*" * 50
# 	erb :'homepage/test'
# end


# health_and_happiness_62 = spotify:user:tadpulse:playlist:1sHTeNkXLYpPRja7vaf6Ks
# https://api.spotify.com/v1/users/{user_id}/playlists/{playlist_id}

# get '/homepage' do
#   erb :'homepage/index'
# end
# spotify:user:davehenton:playlist:3jz4xwzz6jn3GEsROyviT8
# spotify:user:davehenton

# https://open.spotify.com/user/davehenton
# @stuff = HTTParty.get("https://api.spotify.com/v1/albums/382ObEPsp2rxGrnsizN5TX,1A2GTWGtFfWp7KSQTwWOyo,2noRn2Aes5aoNVsU6iWThc", :headers => {"Authorization: Bearer" => "83feda05ab2c1bc41d47684d6d9b8561&"})
# p @stuff
# @stuff = HTTParty.get("https://api.spotify.com/v1/albums/382ObEPsp2rxGrnsizN5TX,1A2GTWGtFfWp7KSQTwWOyo,2noRn2Aes5aoNVsU6iWThc", :headers => {"Authorization: Bearer" => "83feda05ab2c1bc41d47684d6d9b8561&"})

