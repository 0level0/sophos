class CreateUserDevices < ActiveRecord::Migration
  def change
    create_table :user_devices do |t|
      t.integer :device_key
      t.integer :user_id
      t.integer :device_type_id

      t.timestamps
    end
  end
end
