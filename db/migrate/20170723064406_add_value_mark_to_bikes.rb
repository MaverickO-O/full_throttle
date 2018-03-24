class AddValueMarkToBikes < ActiveRecord::Migration[5.1]
  def change
    add_column :bikes, :value_mark, :integer
  end
end
