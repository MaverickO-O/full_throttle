class Bike < ApplicationRecord
	has_one :brand_bike_dbs

	has_one_attached :picturetop
	has_one_attached :picturebike


	def bikethumbnail
		return self.picturebike.variant(resize: '120x120').processed
	end
end