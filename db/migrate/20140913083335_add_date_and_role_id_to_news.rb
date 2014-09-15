class AddDateAndRoleIdToNews < ActiveRecord::Migration
  def change
    add_column :news, :news_date, :datetime
    add_column :news, :role_id, :integer
  end
end
