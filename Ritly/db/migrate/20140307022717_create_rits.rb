class CreateRits < ActiveRecord::Migration
  def change
    create_table :rits do |t|
    	t.string :link
    	t.integer :hashcode
      	t.timestamps
    end
  end
end
