post '/sessions/' do 

	username, password = params[:loginname], params[:loginpassword]
	user = User.authenticate(username, password)
	if user
		session[:user_id] = user.id 
		redirect('/')
	else
		flash[:errors] = ["Sorry, your login was invalid. Please try again"]
		redirect('/')
	end
end

delete '/sessions/end' do

	flash.next[:notice] = User.first(id: session[:user_id]).username
	session[:user_id] = nil
	redirect('/')

end 