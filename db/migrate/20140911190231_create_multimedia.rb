class CreateMultimedia < ActiveRecord::Migration
  def change
    create_table :multimedia do |t|
      t.string :server_location

      t.timestamps
    end
  end
end
