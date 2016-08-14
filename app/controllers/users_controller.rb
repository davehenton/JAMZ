require 'httparty'
require 'json'
require 'pp'

get '/users/new' do
  erb :'/users/new'
end

post '/users/new' do
  @user = User.new(params)
  if @user.save
    login(@user)
    redirect "/users/#{@user.id}"
  else
    @error = "Something wasn't right!"
    erb :'/users/new'
  end
end

get '/login' do
  redirect "https://accounts.spotify.com/authorize/?client_id=#{ENV['SPOTIFY_API_KEY']}&response_type=code&redirect_uri=http://localhost:9393/users/landing&scope=user-top-read%20playlist-read-private%20playlist-read-collaborative%20user-read-private%20user-read-email"
end

get '/users/landing' do 
	code = params[:code]
	token_response = HTTParty.post("https://accounts.spotify.com/api/token", body: { grant_type:"authorization_code", code: code, redirect_uri: "http://localhost:9393/users/landing", client_id: ENV['SPOTIFY_API_KEY'], client_secret: ENV['SPOTIFY_CLIENT_SECRET'] }, header: { authorization: "code" })
	token = token_response["access_token"]
	my_top = HTTParty.get("https://api.spotify.com/v1/me/top/tracks?limit=2", headers: { "Authorization" => "Bearer " + token})
	@first_song_artist = my_top["items"][0]["artists"][0]["name"]
	@first_song = my_top["items"][0]["name"]
	@second_song_artist = my_top["items"][1]["artists"][0]["name"]
	@second_song = my_top["items"][1]["name"]
	erb :'users/landing'
end

get '/users/:id' do
  if session[:user_id]
    @user = User.find(session[:user_id])
  end
  erb :'/users/show'
end


get '/users/delete' do
  User.find(session[:user_id]).destroy
  session[:user_id] = nil
  redirect '/'
end
