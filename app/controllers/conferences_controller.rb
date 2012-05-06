class ConferencesController < ApplicationController
	
	def index
		@conferences = Conference.all
		if @conferences.size == 0
			redirect_to :root, :flash => "No conferences found"
		end
	end	
	
end
