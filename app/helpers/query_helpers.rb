helpers do
	def query_top_tracks(token_code)
		token_response = HTTParty.post("https://accounts.spotify.com/api/token", body: { grant_type:"authorization_code", code: token_code, redirect_uri: "http://localhost:9393/users/landing", client_id: ENV['SPOTIFY_API_KEY'], client_secret: ENV['SPOTIFY_CLIENT_SECRET'] }, header: { authorization: "code" })
		p "*" * 50 
		p token_response
		p "*" * 50 
		token = token_response["access_token"]
		p token
		p "*" * 50 
		my_top = HTTParty.get("https://api.spotify.com/v1/me/top/tracks?limit=2", headers: { "Authorization" => "Bearer " + "token" })
		my_top = HTTParty.get("https://api.spotify.com/v1/me/top/tracks?limit=2", headers: { "Authorization" => "Bearer " + token })
	    return [my_top["items"][0]["artists"][0]["name"], my_top["items"][0]["name"], my_top["items"][1]["artists"][0]["name"], my_top["items"][1]["name"]]
	end

	def query_top_artists
		artists = HTTParty.get("https://api.spotify.com/v1/artists/4tZwfgrHOc3mvqYlEYSvVi")
	    return artists["name"]
	end
end
