class AddComfortMarkToBikes < ActiveRecord::Migration[5.1]
  def change
    add_column :bikes, :comfort_mark, :integer
  end
end
