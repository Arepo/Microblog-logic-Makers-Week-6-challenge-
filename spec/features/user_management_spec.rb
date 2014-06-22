require 'spec_helper'
require_relative '../helpers/user_helpers'

include UserHelpers

feature "In order to use chitter as a maker I want to sign up to the service" do 

	scenario "and have it show that it recognises me" do
		expect{sign_up}.to change(User, :count).by(1)
		expect(page).to have_content("Welcome to Chitter, Bob")
		expect(User.first.email).to eq ("mrbob@to.you")
	end

	scenario "and fail if my email is already registered" do
		sign_up
		expect{sign_up("Michael", "Jackson")}.not_to change(User, :count)
	end

	scenario "or if my user name is already registered" do
		sign_up
		expect{sign_up("Michael", "Geldof")}.not_to change(User, :count)
	end

end

feature "In order to user chitter as a maker I want to log in" do

	before(:each) do
		User.create(name: "test",
					username: "tester",
					email: "test@test.com",
					password: "test1")
	end

	scenario 'validly' do
		visit '/'
		expect(page).not_to have_content("Welcome,")
		sign_in('test', 'test1')
		expect(page).to have_content("Welcome to Chitter, tester")
	end


	scenario "but not invalidly" do
		visit '/'
	    expect(page).not_to have_content("Welcome,")
	    sign_in('test', 'passwrd')
	    expect(page).to have_content("Sorry, your login was invalid. Please try again")
	 end




end
