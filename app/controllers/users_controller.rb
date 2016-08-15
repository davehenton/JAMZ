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

get '/http://still-island-96987.herokuapp.com/users/landing' do 
  code = params[:code]
  p code
  @results = query_top_tracks(code)
  erb :'/users/show'
end



get '/users/landing' do 
	code = params[:code]
  p code
	@results = query_top_tracks(code)
	erb :'/users/show'
end


get '/artists' do
	if request.xhr?
	query_top_artists
	else
	erb :'/users/show'
end
end


get '/users/:id' do
  if session[:user_id]
    @user = User.find(session[:user_id])
  erb :'/users/show'
  end
end

get '/users/test' do
  erb ':/users/test'
end



