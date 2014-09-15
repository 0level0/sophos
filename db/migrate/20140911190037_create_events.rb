class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_details

      t.timestamps
    end
  end
end
