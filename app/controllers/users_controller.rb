class UserController < ApplicationController
	
  def create
    @user = User.new(params[:user])    
    respond_to do |format|
      if @user.save
        format.html {  }
      else
        format.html { render :new }
      end
    end
  end
	
end
