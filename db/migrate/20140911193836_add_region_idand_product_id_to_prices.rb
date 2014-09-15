class AddRegionIdandProductIdToPrices < ActiveRecord::Migration
  def change
    add_column :prices, :region_id, :integer
    add_column :prices, :product_id, :integer
  end
end
