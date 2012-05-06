# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Project::Application.initialize!
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
	:user_name => "c2conf",
	:password => "pass123654",
	:domain => "c2conf.com",
	:address => "smtp.sendgrid.net",
	:port => 587,
	:authentication => :plain,
	:enable_starttls_auto => true
}
