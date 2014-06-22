post '/sessions/' do 

	username, password = params[:loginname], params[:loginpassword]
	user = User.authenticate(username, password)
	if user
		session[:user_id] = user.id 
		redirect('/')
	end
end