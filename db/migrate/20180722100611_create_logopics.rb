class CreateLogopics < ActiveRecord::Migration[5.2]
  def change
    create_table :logopics do |t|
      t.string :name

      t.timestamps
    end
  end
end
