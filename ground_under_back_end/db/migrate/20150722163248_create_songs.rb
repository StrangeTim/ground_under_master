class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.string :genre
      t.string :key
      t.string :bpm
      t.string :description
      t.string :price

      t.timestamps null: false
    end
  end
end
