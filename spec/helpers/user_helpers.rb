module UserHelpers

	def sign_up(name = "Bob Geldof", username = "Bob", email = "mrbob@to.you", password = "Password")
		visit('/cheeters/new')
		fill_in :name, with: name
		fill_in :username, with: username
		fill_in :email, with: email
		fill_in :password, with: password
		click_button "Sign up"
	end

	def sign_in(username, password)
		fill_in 'loginname', with: username
		fill_in 'loginpassword', with: password
		click_button 'Sign in'
	end


end