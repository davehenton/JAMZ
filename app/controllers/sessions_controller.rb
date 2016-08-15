get '/login' do
	erb :'/sessions/login'
end

post '/login' do 
	user_name = params[":username"]
	password = params[":password"]
	user = User.find_by(name: user_name)
	if user && user.password == password
		login(user)
		redirect "/users/:id"
	else
		erb :"/sessions/login"
	end
end


get '/logout' do
	logout
	redirect '/'
end
