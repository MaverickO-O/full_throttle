class Bike < ApplicationRecord
	has_one :brand_bike_dbs
	has_many :users
end