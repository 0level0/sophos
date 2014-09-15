class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.text :new_description
      t.text :headline

      t.timestamps
    end
  end
end
