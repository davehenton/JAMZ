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


get '/users/landing' do 
	code = params[:code]
	@results = query_top_tracks(code)
	erb :'/users/show'
end

get '/login' do
	erb :'/sessions/login'
end



get '/artists' do
	@artists = query_top_artists
	erb :'/users/show'
end




get '/logout' do
	logout
	redirect '/'
end



get '/users/:id' do
  if session[:user_id]
    @user = User.find(session[:user_id])
  end
  erb :'/users/show'
end


