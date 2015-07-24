class AddToUsers < ActiveRecord::Migration
  def change
    add_column :users, :artist, :boolean, :default => false
    add_column :users, :artist_name, :string
    add_column :users, :money, :string
    add_column :users, :description, :string
  end
end
