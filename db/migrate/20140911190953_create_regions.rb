class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.string :currency
      t.string :name

      t.timestamps
    end
  end
end
