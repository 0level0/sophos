class ChangeUsersDatatype < ActiveRecord::Migration
  def change
  change_column :users, :name, :string
  change_column :users, :password, :string
  end
end
