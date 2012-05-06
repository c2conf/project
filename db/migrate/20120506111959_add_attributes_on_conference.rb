class AddAttributesOnConference < ActiveRecord::Migration

  def change
  	add_column :conferences, :phone_no, :string
  	add_column :conferences, :passcode, :string
  	add_column :conferences, :meeting_at, :datetime
  	remove_column :conferences, :body
  end

end
