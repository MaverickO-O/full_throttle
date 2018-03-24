class CreateBikes < ActiveRecord::Migration[5.1]
  def change
    create_table :bikes do |t|
      t.string :bike_name
      t.string :brand
      t.string :bike_type
      t.integer :year
      t.integer :cylinder_cc
      t.integer :weight_kg
      t.integer :weight_lb
      t.integer :price_usd
      t.text :intro
      t.text :style
      t.integer :style_mark
      t.text :engine
      t.integer :engine_mark
      t.text :handling
      t.integer :handling_mark
      t.text :braking
      t.integer :braking_mark
      t.text :conclusion
    #  t.text :test

      t.timestamps
    end
  end
end


