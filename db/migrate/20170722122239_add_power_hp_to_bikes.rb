class AddPowerHpToBikes < ActiveRecord::Migration[5.1]
  def change
    add_column :bikes, :power_hp, :integer
  end
end
