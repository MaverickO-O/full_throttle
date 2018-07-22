class AddYoutubereview1ToBike < ActiveRecord::Migration[5.2]
  def change
    add_column :bikes, :Youtubereview1, :text
  end
end
