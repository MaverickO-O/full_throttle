class CreateForumcategs < ActiveRecord::Migration[5.1]
  def change
    create_table :forumcategs do |t|
      t.string :titl
      t.text :descript
      t.integer :order

      t.timestamps
    end
  end
end
