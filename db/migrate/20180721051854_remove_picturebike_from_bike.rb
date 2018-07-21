class RemovePicturebikeFromBike < ActiveRecord::Migration[5.2]
  def change
    remove_column :bikes, :picturebike, :string
  end
end
