class ApplicationMailer < ActionMailer::Base
	default from: 'from@example.com'
	layout 'mailer'

	def mail_welcome(user)  
		mail to: user, subject: "SPAM ALERT"
	end
end
