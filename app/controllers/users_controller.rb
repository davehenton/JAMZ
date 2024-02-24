require 'httparty'
require 'json'
require 'pp'


#as soon as i can get oAuth working on the deployed version of this app, i'll have the oAuth login also route to a creation of a new user in my own database. 
#Until then, I've got a clunky mess where you have to sign up for my own site and then sign in again via oAuth to spotify.
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
  @results = query_top_tracks(code)
  # @results = query_top_tracks(code)
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
  else
    redirect '/users/new'
  end
end


stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff

stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff

stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff

stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff

stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff

stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff

stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff

stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff

stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff

stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff

stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff

stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff

stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff

stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff

stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff

stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff

stuff
stuff 
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff
stuff

