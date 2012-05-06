class ConferenceMailer < ActionMailer::Base
  default from: "support@c2conf.com"
  
  def success(conference)
  	@conference = conference
    mail(:to => @conference.email, :subject => "Call Reminder from C2Con")
  end
  
  def failure(conference)
  	@email = conference.email
    mail(:to => user.email, :subject => "Welcome to My Awesome Site")
  end
  
end
