class AddPictureintroToBike < ActiveRecord::Migration[5.1]
  def change
    add_column :bikes, :pictureintro, :string
  end
end
