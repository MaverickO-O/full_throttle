class Bike < ApplicationRecord
	has_one :brand_bike_dbs

	has_one_attached :picturetop
	has_one_attached :picturebike
	has_one_attached :picture2

end