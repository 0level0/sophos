class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.decimal :product_region
      t.timestamps
    end
  end
end
