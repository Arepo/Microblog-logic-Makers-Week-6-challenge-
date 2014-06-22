require 'bcrypt'

class User

	include DataMapper::Resource

	property :id, Serial
	property :name, String
	property :username, String, unique: true, message: "That user name is already taken"
	property :email, String, unique: true, message: "That email is already taken"
	property :password_digest, Text
	# roperty :email, String, :unique => true, :message => "This email is already taken"

	def password=(password)
		self.password_digest = BCrypt::Password.create(password)
	end

	def self.authenticate(name, password)
		user = first(name: name)
		if user && BCrypt::Password.new(user.password_digest) == password
			user
		end
	end

end