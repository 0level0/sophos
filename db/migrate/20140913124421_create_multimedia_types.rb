class CreateMultimediaTypes < ActiveRecord::Migration
  def change
    create_table :multimedia_types do |t|
      t.string :media_type
      t.string :media_format

      t.timestamps
    end
  end
end
