class User < ActiveRecord::Base
	# using bcrypt by saying has_secure password
	has_secure_password

	has_many :your_tips

	def self.confirm(email_param, password_param)
	    user = User.find_by({email: email_param})
	    user.authenticate(password_param)
  	end
end
