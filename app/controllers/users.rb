get '/cheeters/new' do 
	erb :users
end

post '/cheeters/new' do
	
	@user = User.new(name: params[:name],
				username: params[:username],
				email: params[:email],
				password: params[:password])
	if @user.save
		session[:user_id] = @user.id	
		redirect to('/')
	else
		flash.now[:errors] = @user.errors.full_messages
		erb :"cheeters/new"
	end	
	
end