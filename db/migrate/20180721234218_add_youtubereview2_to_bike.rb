class AddYoutubereview2ToBike < ActiveRecord::Migration[5.2]
  def change
    add_column :bikes, :Youtubereview2, :text
  end
end
