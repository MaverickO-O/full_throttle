class AddYearbirthToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :yearbirth, :integer
  end
end
