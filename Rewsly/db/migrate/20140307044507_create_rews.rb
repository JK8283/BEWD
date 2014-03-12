class CreateRews < ActiveRecord::Migration
  def change
    create_table :rews do |t|
    	t.string :title
    	t.text :story
    	t.string :category
    	t.integer :upvotes
      	t.timestamps
    end
  end
end
