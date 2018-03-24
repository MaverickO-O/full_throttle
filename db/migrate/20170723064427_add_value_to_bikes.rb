class AddValueToBikes < ActiveRecord::Migration[5.1]
  def change
    add_column :bikes, :value, :text
  end
end
