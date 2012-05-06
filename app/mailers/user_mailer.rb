class UserMailer < ActionMailer::Base
  default from: "support@c2conf.com"
  
  def welcome_email(user)
  	@email = user.email
    mail(:to => user.email, :subject => "Welcome to My Awesome Site")
  end
  
end
