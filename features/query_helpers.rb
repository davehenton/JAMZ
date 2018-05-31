helpers do
	def query_top_tracks(token_code)
		token_response = HTTParty.post("https://accounts.spotify.com/api/token", body: { grant_type:"authorization_code", code: token_code, redirect_uri: "https://still-island-96987.herokuapp.com/users/landing", client_id: ENV['SPOTIFY_CLIENT_ID'], client_secret: ENV['SPOTIFY_CLIENT_SECRET'] }, header: { authorization: "code" })
		token = token_response["access_token"]
		my_top = HTTParty.get("https://api.spotify.com/v1/me/top/tracks?limit=2", headers: { "Authorization" => "Bearer " + token })
		return [my_top["items"][0]["artists"][0]["name"], my_top["items"][0]["name"], my_top["items"][1]["artists"][0]["name"], my_top["items"][1]["name"]]
	end

	def query_top_artists
		artists = HTTParty.get("https://api.spotify.com/v1/artists/4tZwfgrHOc3mvqYlEYSvVi")
	    return artists["name"]
	end
end

def query_top_tracks(token_code)
		token_response = HTTParty.post("https://accounts.spotify.com/api/token", body: { grant_type:"authorization_code", code: token_code, redirect_uri: "https://still-island-96987.herokuapp.com/users/landing", client_id: ENV['SPOTIFY_CLIENT_ID'], client_secret: ENV['SPOTIFY_CLIENT_SECRET'] }, header: { authorization: "code" })
		token = token_response["access_token"]
		my_top = HTTParty.get("https://api.spotify.com/v1/me/top/tracks?limit=2", headers: { "Authorization" => "Bearer " + token })
		return [my_top["items"][0]["artists"][0]["name"], my_top["items"][0]["name"], my_top["items"][1]["artists"][0]["name"], my_top["items"][1]["name"]]
	end

def query_top_tracks(token_code)
		token_response = HTTParty.post("https://accounts.spotify.com/api/token", body: { grant_type:"authorization_code", code: token_code, redirect_uri: "https://still-island-96987.herokuapp.com/users/landing", client_id: ENV['SPOTIFY_CLIENT_ID'], client_secret: ENV['SPOTIFY_CLIENT_SECRET'] }, header: { authorization: "code" })
		token = token_response["access_token"]
		my_top = HTTParty.get("https://api.spotify.com/v1/me/top/tracks?limit=2", headers: { "Authorization" => "Bearer " + token })
		return [my_top["items"][0]["artists"][0]["name"], my_top["items"][0]["name"], my_top["items"][1]["artists"][0]["name"], my_top["items"][1]["name"]]
	end

def query_top_tracks(token_code)
		token_response = HTTParty.post("https://accounts.spotify.com/api/token", body: { grant_type:"authorization_code", code: token_code, redirect_uri: "https://still-island-96987.herokuapp.com/users/landing", client_id: ENV['SPOTIFY_CLIENT_ID'], client_secret: ENV['SPOTIFY_CLIENT_SECRET'] }, header: { authorization: "code" })
		token = token_response["access_token"]
		my_top = HTTParty.get("https://api.spotify.com/v1/me/top/tracks?limit=2", headers: { "Authorization" => "Bearer " + token })
		return [my_top["items"][0]["artists"][0]["name"], my_top["items"][0]["name"], my_top["items"][1]["artists"][0]["name"], my_top["items"][1]["name"]]
	end

puts

helpers do
	def query_top_tracks(token_code)
		token_response = HTTParty.post("https://accounts.spotify.com/api/token", body: { grant_type:"authorization_code", code: token_code, redirect_uri: "https://still-island-96987.herokuapp.com/users/landing", client_id: ENV['SPOTIFY_CLIENT_ID'], client_secret: ENV['SPOTIFY_CLIENT_SECRET'] }, header: { authorization: "code" })
		token = token_response["access_token"]
		my_top = HTTParty.get("https://api.spotify.com/v1/me/top/tracks?limit=2", headers: { "Authorization" => "Bearer " + token })
		return [my_top["items"][0]["artists"][0]["name"], my_top["items"][0]["name"], my_top["items"][1]["artists"][0]["name"], my_top["items"][1]["name"]]
	end

	def query_top_artists
		artists = HTTParty.get("https://api.spotify.com/v1/artists/4tZwfgrHOc3mvqYlEYSvVi")
	    return artists["name"]
	end
end

def query_top_tracks(token_code)
		token_response = HTTParty.post("https://accounts.spotify.com/api/token", body: { grant_type:"authorization_code", code: token_code, redirect_uri: "https://still-island-96987.herokuapp.com/users/landing", client_id: ENV['SPOTIFY_CLIENT_ID'], client_secret: ENV['SPOTIFY_CLIENT_SECRET'] }, header: { authorization: "code" })
		token = token_response["access_token"]
		my_top = HTTParty.get("https://api.spotify.com/v1/me/top/tracks?limit=2", headers: { "Authorization" => "Bearer " + token })
		return [my_top["items"][0]["artists"][0]["name"], my_top["items"][0]["name"], my_top["items"][1]["artists"][0]["name"], my_top["items"][1]["name"]]
	end

def query_top_tracks(token_code)
		token_response = HTTParty.post("https://accounts.spotify.com/api/token", body: { grant_type:"authorization_code", code: token_code, redirect_uri: "https://still-island-96987.herokuapp.com/users/landing", client_id: ENV['SPOTIFY_CLIENT_ID'], client_secret: ENV['SPOTIFY_CLIENT_SECRET'] }, header: { authorization: "code" })
		token = token_response["access_token"]
		my_top = HTTParty.get("https://api.spotify.com/v1/me/top/tracks?limit=2", headers: { "Authorization" => "Bearer " + token })
		return [my_top["items"][0]["artists"][0]["name"], my_top["items"][0]["name"], my_top["items"][1]["artists"][0]["name"], my_top["items"][1]["name"]]
	end

def query_top_tracks(token_code)
		token_response = HTTParty.post("https://accounts.spotify.com/api/token", body: { grant_type:"authorization_code", code: token_code, redirect_uri: "https://still-island-96987.herokuapp.com/users/landing", client_id: ENV['SPOTIFY_CLIENT_ID'], client_secret: ENV['SPOTIFY_CLIENT_SECRET'] }, header: { authorization: "code" })
		token = token_response["access_token"]
		my_top = HTTParty.get("https://api.spotify.com/v1/me/top/tracks?limit=2", headers: { "Authorization" => "Bearer " + token })
		return [my_top["items"][0]["artists"][0]["name"], my_top["items"][0]["name"], my_top["items"][1]["artists"][0]["name"], my_top["items"][1]["name"]]
	end

puts

helpers do
	def query_top_tracks(token_code)
		token_response = HTTParty.post("https://accounts.spotify.com/api/token", body: { grant_type:"authorization_code", code: token_code, redirect_uri: "https://still-island-96987.herokuapp.com/users/landing", client_id: ENV['SPOTIFY_CLIENT_ID'], client_secret: ENV['SPOTIFY_CLIENT_SECRET'] }, header: { authorization: "code" })
		token = token_response["access_token"]
		my_top = HTTParty.get("https://api.spotify.com/v1/me/top/tracks?limit=2", headers: { "Authorization" => "Bearer " + token })
		return [my_top["items"][0]["artists"][0]["name"], my_top["items"][0]["name"], my_top["items"][1]["artists"][0]["name"], my_top["items"][1]["name"]]
	end

	def query_top_artists
		artists = HTTParty.get("https://api.spotify.com/v1/artists/4tZwfgrHOc3mvqYlEYSvVi")
	    return artists["name"]
	end
end

def query_top_tracks(token_code)
		token_response = HTTParty.post("https://accounts.spotify.com/api/token", body: { grant_type:"authorization_code", code: token_code, redirect_uri: "https://still-island-96987.herokuapp.com/users/landing", client_id: ENV['SPOTIFY_CLIENT_ID'], client_secret: ENV['SPOTIFY_CLIENT_SECRET'] }, header: { authorization: "code" })
		token = token_response["access_token"]
		my_top = HTTParty.get("https://api.spotify.com/v1/me/top/tracks?limit=2", headers: { "Authorization" => "Bearer " + token })
		return [my_top["items"][0]["artists"][0]["name"], my_top["items"][0]["name"], my_top["items"][1]["artists"][0]["name"], my_top["items"][1]["name"]]
	end

def query_top_tracks(token_code)
		token_response = HTTParty.post("https://accounts.spotify.com/api/token", body: { grant_type:"authorization_code", code: token_code, redirect_uri: "https://still-island-96987.herokuapp.com/users/landing", client_id: ENV['SPOTIFY_CLIENT_ID'], client_secret: ENV['SPOTIFY_CLIENT_SECRET'] }, header: { authorization: "code" })
		token = token_response["access_token"]
		my_top = HTTParty.get("https://api.spotify.com/v1/me/top/tracks?limit=2", headers: { "Authorization" => "Bearer " + token })
		return [my_top["items"][0]["artists"][0]["name"], my_top["items"][0]["name"], my_top["items"][1]["artists"][0]["name"], my_top["items"][1]["name"]]
	end

def query_top_tracks(token_code)
		token_response = HTTParty.post("https://accounts.spotify.com/api/token", body: { grant_type:"authorization_code", code: token_code, redirect_uri: "https://still-island-96987.herokuapp.com/users/landing", client_id: ENV['SPOTIFY_CLIENT_ID'], client_secret: ENV['SPOTIFY_CLIENT_SECRET'] }, header: { authorization: "code" })
		token = token_response["access_token"]
		my_top = HTTParty.get("https://api.spotify.com/v1/me/top/tracks?limit=2", headers: { "Authorization" => "Bearer " + token })
		return [my_top["items"][0]["artists"][0]["name"], my_top["items"][0]["name"], my_top["items"][1]["artists"][0]["name"], my_top["items"][1]["name"]]
	end

puts

helpers do
	def query_top_tracks(token_code)
		token_response = HTTParty.post("https://accounts.spotify.com/api/token", body: { grant_type:"authorization_code", code: token_code, redirect_uri: "https://still-island-96987.herokuapp.com/users/landing", client_id: ENV['SPOTIFY_CLIENT_ID'], client_secret: ENV['SPOTIFY_CLIENT_SECRET'] }, header: { authorization: "code" })
		token = token_response["access_token"]
		my_top = HTTParty.get("https://api.spotify.com/v1/me/top/tracks?limit=2", headers: { "Authorization" => "Bearer " + token })
		return [my_top["items"][0]["artists"][0]["name"], my_top["items"][0]["name"], my_top["items"][1]["artists"][0]["name"], my_top["items"][1]["name"]]
	end

	def query_top_artists
		artists = HTTParty.get("https://api.spotify.com/v1/artists/4tZwfgrHOc3mvqYlEYSvVi")
	    return artists["name"]
	end
end

def query_top_tracks(token_code)
		token_response = HTTParty.post("https://accounts.spotify.com/api/token", body: { grant_type:"authorization_code", code: token_code, redirect_uri: "https://still-island-96987.herokuapp.com/users/landing", client_id: ENV['SPOTIFY_CLIENT_ID'], client_secret: ENV['SPOTIFY_CLIENT_SECRET'] }, header: { authorization: "code" })
		token = token_response["access_token"]
		my_top = HTTParty.get("https://api.spotify.com/v1/me/top/tracks?limit=2", headers: { "Authorization" => "Bearer " + token })
		return [my_top["items"][0]["artists"][0]["name"], my_top["items"][0]["name"], my_top["items"][1]["artists"][0]["name"], my_top["items"][1]["name"]]
	end

def query_top_tracks(token_code)
		token_response = HTTParty.post("https://accounts.spotify.com/api/token", body: { grant_type:"authorization_code", code: token_code, redirect_uri: "https://still-island-96987.herokuapp.com/users/landing", client_id: ENV['SPOTIFY_CLIENT_ID'], client_secret: ENV['SPOTIFY_CLIENT_SECRET'] }, header: { authorization: "code" })
		token = token_response["access_token"]
		my_top = HTTParty.get("https://api.spotify.com/v1/me/top/tracks?limit=2", headers: { "Authorization" => "Bearer " + token })
		return [my_top["items"][0]["artists"][0]["name"], my_top["items"][0]["name"], my_top["items"][1]["artists"][0]["name"], my_top["items"][1]["name"]]
	end

def query_top_tracks(token_code)
		token_response = HTTParty.post("https://accounts.spotify.com/api/token", body: { grant_type:"authorization_code", code: token_code, redirect_uri: "https://still-island-96987.herokuapp.com/users/landing", client_id: ENV['SPOTIFY_CLIENT_ID'], client_secret: ENV['SPOTIFY_CLIENT_SECRET'] }, header: { authorization: "code" })
		token = token_response["access_token"]
		my_top = HTTParty.get("https://api.spotify.com/v1/me/top/tracks?limit=2", headers: { "Authorization" => "Bearer " + token })
		return [my_top["items"][0]["artists"][0]["name"], my_top["items"][0]["name"], my_top["items"][1]["artists"][0]["name"], my_top["items"][1]["name"]]
	end

puts

helpers do
	def query_top_tracks(token_code)
		token_response = HTTParty.post("https://accounts.spotify.com/api/token", body: { grant_type:"authorization_code", code: token_code, redirect_uri: "https://still-island-96987.herokuapp.com/users/landing", client_id: ENV['SPOTIFY_CLIENT_ID'], client_secret: ENV['SPOTIFY_CLIENT_SECRET'] }, header: { authorization: "code" })
		token = token_response["access_token"]
		my_top = HTTParty.get("https://api.spotify.com/v1/me/top/tracks?limit=2", headers: { "Authorization" => "Bearer " + token })
		return [my_top["items"][0]["artists"][0]["name"], my_top["items"][0]["name"], my_top["items"][1]["artists"][0]["name"], my_top["items"][1]["name"]]
	end

	def query_top_artists
		artists = HTTParty.get("https://api.spotify.com/v1/artists/4tZwfgrHOc3mvqYlEYSvVi")
	    return artists["name"]
	end
end

def query_top_tracks(token_code)
		token_response = HTTParty.post("https://accounts.spotify.com/api/token", body: { grant_type:"authorization_code", code: token_code, redirect_uri: "https://still-island-96987.herokuapp.com/users/landing", client_id: ENV['SPOTIFY_CLIENT_ID'], client_secret: ENV['SPOTIFY_CLIENT_SECRET'] }, header: { authorization: "code" })
		token = token_response["access_token"]
		my_top = HTTParty.get("https://api.spotify.com/v1/me/top/tracks?limit=2", headers: { "Authorization" => "Bearer " + token })
		return [my_top["items"][0]["artists"][0]["name"], my_top["items"][0]["name"], my_top["items"][1]["artists"][0]["name"], my_top["items"][1]["name"]]
	end

def query_top_tracks(token_code)
		token_response = HTTParty.post("https://accounts.spotify.com/api/token", body: { grant_type:"authorization_code", code: token_code, redirect_uri: "https://still-island-96987.herokuapp.com/users/landing", client_id: ENV['SPOTIFY_CLIENT_ID'], client_secret: ENV['SPOTIFY_CLIENT_SECRET'] }, header: { authorization: "code" })
		token = token_response["access_token"]
		my_top = HTTParty.get("https://api.spotify.com/v1/me/top/tracks?limit=2", headers: { "Authorization" => "Bearer " + token })
		return [my_top["items"][0]["artists"][0]["name"], my_top["items"][0]["name"], my_top["items"][1]["artists"][0]["name"], my_top["items"][1]["name"]]
	end

def query_top_tracks(token_code)
		token_response = HTTParty.post("https://accounts.spotify.com/api/token", body: { grant_type:"authorization_code", code: token_code, redirect_uri: "https://still-island-96987.herokuapp.com/users/landing", client_id: ENV['SPOTIFY_CLIENT_ID'], client_secret: ENV['SPOTIFY_CLIENT_SECRET'] }, header: { authorization: "code" })
		token = token_response["access_token"]
		my_top = HTTParty.get("https://api.spotify.com/v1/me/top/tracks?limit=2", headers: { "Authorization" => "Bearer " + token })
		return [my_top["items"][0]["artists"][0]["name"], my_top["items"][0]["name"], my_top["items"][1]["artists"][0]["name"], my_top["items"][1]["name"]]
	end

puts

helpers do
	def query_top_tracks(token_code)
		token_response = HTTParty.post("https://accounts.spotify.com/api/token", body: { grant_type:"authorization_code", code: token_code, redirect_uri: "https://still-island-96987.herokuapp.com/users/landing", client_id: ENV['SPOTIFY_CLIENT_ID'], client_secret: ENV['SPOTIFY_CLIENT_SECRET'] }, header: { authorization: "code" })
		token = token_response["access_token"]
		my_top = HTTParty.get("https://api.spotify.com/v1/me/top/tracks?limit=2", headers: { "Authorization" => "Bearer " + token })
		return [my_top["items"][0]["artists"][0]["name"], my_top["items"][0]["name"], my_top["items"][1]["artists"][0]["name"], my_top["items"][1]["name"]]
	end

	def query_top_artists
		artists = HTTParty.get("https://api.spotify.com/v1/artists/4tZwfgrHOc3mvqYlEYSvVi")
	    return artists["name"]
	end
end

def query_top_tracks(token_code)
		token_response = HTTParty.post("https://accounts.spotify.com/api/token", body: { grant_type:"authorization_code", code: token_code, redirect_uri: "https://still-island-96987.herokuapp.com/users/landing", client_id: ENV['SPOTIFY_CLIENT_ID'], client_secret: ENV['SPOTIFY_CLIENT_SECRET'] }, header: { authorization: "code" })
		token = token_response["access_token"]
		my_top = HTTParty.get("https://api.spotify.com/v1/me/top/tracks?limit=2", headers: { "Authorization" => "Bearer " + token })
		return [my_top["items"][0]["artists"][0]["name"], my_top["items"][0]["name"], my_top["items"][1]["artists"][0]["name"], my_top["items"][1]["name"]]
	end

def query_top_tracks(token_code)
		token_response = HTTParty.post("https://accounts.spotify.com/api/token", body: { grant_type:"authorization_code", code: token_code, redirect_uri: "https://still-island-96987.herokuapp.com/users/landing", client_id: ENV['SPOTIFY_CLIENT_ID'], client_secret: ENV['SPOTIFY_CLIENT_SECRET'] }, header: { authorization: "code" })
		token = token_response["access_token"]
		my_top = HTTParty.get("https://api.spotify.com/v1/me/top/tracks?limit=2", headers: { "Authorization" => "Bearer " + token })
		return [my_top["items"][0]["artists"][0]["name"], my_top["items"][0]["name"], my_top["items"][1]["artists"][0]["name"], my_top["items"][1]["name"]]
	end

def query_top_tracks(token_code)
		token_response = HTTParty.post("https://accounts.spotify.com/api/token", body: { grant_type:"authorization_code", code: token_code, redirect_uri: "https://still-island-96987.herokuapp.com/users/landing", client_id: ENV['SPOTIFY_CLIENT_ID'], client_secret: ENV['SPOTIFY_CLIENT_SECRET'] }, header: { authorization: "code" })
		token = token_response["access_token"]
		my_top = HTTParty.get("https://api.spotify.com/v1/me/top/tracks?limit=2", headers: { "Authorization" => "Bearer " + token })
		return [my_top["items"][0]["artists"][0]["name"], my_top["items"][0]["name"], my_top["items"][1]["artists"][0]["name"], my_top["items"][1]["name"]]
	end

puts
