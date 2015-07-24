class CreateArtistsSongs < ActiveRecord::Migration
  def change
    create_table :artists_songs, id: false do |t|
      t.integer :artist_id, index: true
      t.integer :song_id, index: true
    end
  end
end
