class DropTables < ActiveRecord::Migration
  def change
    drop_table :artists_songs
    drop_table :artists
    drop_table :songs_users

  end
end
