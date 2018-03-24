class AddComfortToBikes < ActiveRecord::Migration[5.1]
  def change
    add_column :bikes, :comfort, :text
  end
end
