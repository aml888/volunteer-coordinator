class UserMailer < ActionMailer::Base
	default from: 'admin@volunteercoordinator.com'

	def welcome_email(user)
		@user = user
		@url = 'http://example.com/login'
		mail(to: @user.email, subject: 'Welcome to Volunteer Coordinator')
	end
	
end
