class WelcomeMailer < ActionMailer::Base

	def registration
		@greeting = 'Hi'
		mail to: 'test@example.com'
	end
  


end
