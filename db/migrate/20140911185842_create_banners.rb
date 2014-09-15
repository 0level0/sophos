class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.string :server_image_url
      t.string :show_on_home_page
      t.string :associated_link

      t.timestamps
    end
  end
end
