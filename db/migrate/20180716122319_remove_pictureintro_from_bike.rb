class RemovePictureintroFromBike < ActiveRecord::Migration[5.2]
  def change
    remove_column :bikes, :name, :string
  end
end
