get '/cheeters/new' do 
	erb :users
end

post '/cheeters/new' do
	@user = User.create(username: params[:name],
				email: params[:email],
				password: params[:password])
	session[:user_id] = @user.id
	redirect to('/')
end