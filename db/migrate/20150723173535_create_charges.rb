class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.string :token
      t.integer :amount
    end
    remove_column :songs, :price, :string
    add_column :songs, :price, :integer
  end
end
