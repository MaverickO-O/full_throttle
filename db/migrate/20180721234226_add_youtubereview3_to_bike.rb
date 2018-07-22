class AddYoutubereview3ToBike < ActiveRecord::Migration[5.2]
  def change
    add_column :bikes, :Youtubereview3, :text
  end
end
