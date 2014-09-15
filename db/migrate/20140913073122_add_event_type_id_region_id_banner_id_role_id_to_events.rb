class AddEventTypeIdRegionIdBannerIdRoleIdToEvents < ActiveRecord::Migration
  def change
    add_column :events, :event_type_id, :integer
    add_column :events, :region_id, :integer
    add_column :events, :banner_id, :integer
    add_column :events, :role_id, :integer
  end
end
