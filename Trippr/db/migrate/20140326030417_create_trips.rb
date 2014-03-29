class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
    	t.string :travelername
    	t.string :tripname
    	t.string :destination
    	t.string :departure
    	t.string :return
    	t.integer :budget
      t.timestamps
    end
  end
end
