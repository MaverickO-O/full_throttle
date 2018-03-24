class AddBikelevelToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :bikelevel, :string
  end
end
