class AddAttributesOnConference < ActiveRecord::Migration

  def up
  	add_column :conferences, :phone_no, :string
  	add_column :conferences, :passcode, :string
  	add_column :conferences, :on_date, :date
  	add_column :conferences, :at_time, :string
  	add_column :conferences, :email, :string
  	remove_column :conferences, :body
  end

	def down
		remove_column :conferences, :phone_no
		remove_column :conferences, :passcode
		remove_column :conferences, :on_date
		remove_column :conferences, :at_time
		remove_column :conferences, :email
		add_column :conferences, :body, :text
	end

end
