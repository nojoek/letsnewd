class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :location_name
      t.integer :event_id
      t.string :address
      t.string :zip

      t.timestamps
    end
  end
end
