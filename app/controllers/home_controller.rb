class HomeController < ApplicationController

	def index
		@user = User.new
	end	
	
	def receive_email
		email_body = params[:text].force_encoding("binary").to_crlf
		@conference = Conference.new()
		@conference.set_passcode(email_body)
		@conference.set_email(params[:from])
		@conference.set_phone_no(email_body)
		@conference.set_date(email_body)
		@conference.set_time(email_body)
		if @conference.save
			ConferenceMailer.success(@conference)
		else
			ConferenceMailer.failure(@conference)
		end
	end
	
end
