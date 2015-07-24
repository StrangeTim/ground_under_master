class FixLibraries < ActiveRecord::Migration
  def change
    drop_table :libraries
    create_table :libraries do |t|
      t.belongs_to :users, index: true
      t.belongs_to :songs, index: true
      t.boolean :purchased, default: false
    end

  end


end
