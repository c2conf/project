class User < ActiveRecord::Base

	validates :email, :presence => true
  attr_accessible :email
  
end
