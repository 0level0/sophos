class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.text :product_name
      t.text :product_description

      t.timestamps
    end
  end
end
