class CreateApiV1Artworks < ActiveRecord::Migration[5.1]
  def change
    create_table :artworks do |t|
      t.string :title
      t.string :artist
      t.string :image
      t.references :api_v1_gallery, foreign_key: true

      t.timestamps
    end
  end
end
