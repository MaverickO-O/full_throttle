class AddCategToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :categ, :string
  end
end
