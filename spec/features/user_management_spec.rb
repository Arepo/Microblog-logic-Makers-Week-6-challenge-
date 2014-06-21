require 'spec_helper'

feature "In order to use chitter as a maker I want to sign up to the service" do 

	scenario "while being logged out" do
		expect{sign_up}.to change(User, :count).by(1)
		expect(page).to have_content("Welcome to Chitter, Bob")
		expect(User.first.email).to eq ("mrbob@to.you")
	end

	def sign_up(name = "Bob", username = "Geldof", email = "mrbob@to.you", password = "Password")
		visit('/cheeters/new')
		fill_in :name, with: name
		fill_in :username, with: username
		fill_in :email, with: email
		fill_in :password, with: password
		click_button "Sign up"
	end

end

feature "In order to user chitter as a maker I want to log in" do

end

feature "In order to avoid others to use my account as a maker I want to log out" do

end
