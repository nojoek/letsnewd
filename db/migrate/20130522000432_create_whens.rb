class CreateWhens < ActiveRecord::Migration
  def change
    create_table :whens do |t|
      t.time :time_option
      t.integer :event_id

      t.timestamps
    end
  end
end
