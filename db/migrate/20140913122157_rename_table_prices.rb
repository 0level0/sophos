class RenameTablePrices < ActiveRecord::Migration
  def change
    rename_table :prices, :product_regions
  end
end
