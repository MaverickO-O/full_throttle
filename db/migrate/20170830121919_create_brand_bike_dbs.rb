class CreateBrandBikeDbs < ActiveRecord::Migration[5.1]
  def change
    create_table :brand_bike_dbs do |t|
      t.string :brand_name

      t.timestamps
    end
  end
end
