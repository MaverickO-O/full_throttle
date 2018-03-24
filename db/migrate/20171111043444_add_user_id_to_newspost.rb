class AddUserIdToNewspost < ActiveRecord::Migration[5.1]
  def change
    add_column :newsposts, :user_id, :integer
  end
end
