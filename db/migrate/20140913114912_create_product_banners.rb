class CreateProductBanners < ActiveRecord::Migration
  def change
    create_table :product_banners do |t|
      t.integer :product_id
      t.integer :banner_id

      t.timestamps
    end
  end
end
