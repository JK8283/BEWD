class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t|
    	t.string :name
    	t.string :phone
    	t.integer :waittime
      t.timestamps
    end
  end
end
