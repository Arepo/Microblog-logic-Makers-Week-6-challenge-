def current_cheeter
	@current_cheeter ||= User.get(session[:user_id]) if session[:user_id]
end