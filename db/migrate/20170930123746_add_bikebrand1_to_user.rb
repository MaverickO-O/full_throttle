class AddBikebrand1ToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :bikebrand1, :string
  end
end
