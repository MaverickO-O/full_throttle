class AddBikename1ToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :bikename1, :string
  end
end
