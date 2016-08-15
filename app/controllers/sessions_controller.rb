get '/login' do
	erb :'/sessions/login'
end

post '/login' do 
	user_name = params[":username"]
	password = params[":password"]
	user = User.find_by(username: user_name)
	if user && user.password == password
		login(user)
		redirect "/"
	else
		p "Something doesn't check out! Check it out."
		erb :"/sessions/login"
	end
end


get '/logout' do
	logout
	redirect '/'
end
