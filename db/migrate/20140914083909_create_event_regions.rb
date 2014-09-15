class CreateEventRegions < ActiveRecord::Migration
  def change
    create_table :event_regions do |t|
      t.integer :event_id
      t.integer :region_id

      t.timestamps
    end
  end
end
