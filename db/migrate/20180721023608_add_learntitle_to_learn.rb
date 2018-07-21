class AddLearntitleToLearn < ActiveRecord::Migration[5.2]
  def change
    add_column :learns, :learntitle, :string
  end
end
