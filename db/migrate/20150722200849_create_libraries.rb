class CreateLibraries < ActiveRecord::Migration
  def change
    create_table :libraries do |t|
      t.belongs_to :users
      t.belongs_to :songs
      t.boolean :purchased, default: false
    end
  end
end
