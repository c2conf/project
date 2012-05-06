class CreateConferences < ActiveRecord::Migration
  def change
    create_table :conferences do |t|
      t.text :body

      t.timestamps
    end
  end
end
