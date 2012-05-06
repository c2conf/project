class HomeController < ApplicationController

	def index
		@user = User.new
	end	
	
	def receive_email
		Conference.create(:body => params.force_encoding("binary").to_crlf)
	end
	
end
