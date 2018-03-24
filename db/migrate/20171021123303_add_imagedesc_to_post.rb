class AddImagedescToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :imagedesc, :text
  end
end
