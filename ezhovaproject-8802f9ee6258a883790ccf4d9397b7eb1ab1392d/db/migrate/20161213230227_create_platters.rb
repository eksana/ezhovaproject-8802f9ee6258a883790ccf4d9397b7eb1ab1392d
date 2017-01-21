class CreatePlatters < ActiveRecord::Migration[5.0]
  def change
    create_table :platters do |t|
      t.string :name
      t.string :singer
      t.integer :year
      t.integer :genre_id
      t.integer :image_id
      t.integer :user_id
      t.string :description

      t.timestamps
    end
  end
end
