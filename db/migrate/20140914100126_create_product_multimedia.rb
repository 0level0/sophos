class CreateProductMultimedia < ActiveRecord::Migration
  def change
    create_table :product_multimedia do |t|
      t.integer :product_id
      t.integer :multimedia_id

      t.timestamps
    end
  end
end
