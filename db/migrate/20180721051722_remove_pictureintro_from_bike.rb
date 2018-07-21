class RemovePictureintroFromBike < ActiveRecord::Migration[5.2]
  def change
    remove_column :bikes, :pictureintro, :string
  end
end
