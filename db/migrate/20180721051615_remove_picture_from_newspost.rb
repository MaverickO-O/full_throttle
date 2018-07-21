class RemovePictureFromNewspost < ActiveRecord::Migration[5.2]
  def change
    remove_column :newsposts, :picture, :string
  end
end
