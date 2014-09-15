class CreateEventBanners < ActiveRecord::Migration
  def change
    create_table :event_banners do |t|
      t.integer :event_id
      t.integer :banner_id

      t.timestamps
    end
  end
end
