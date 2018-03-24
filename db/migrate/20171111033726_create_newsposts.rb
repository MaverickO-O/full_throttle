class CreateNewsposts < ActiveRecord::Migration[5.1]
  def change
    create_table :newsposts do |t|
      t.string :title
      t.text :text
      t.string :picture
      t.string :author
      t.integer :viewcount

      t.timestamps
    end
  end
end
