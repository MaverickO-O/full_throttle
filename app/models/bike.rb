class Bike < ApplicationRecord
	has_one :brand_bike_dbs
	#belongs_to :user
	mount_uploader :pictureintro, ImageUploader
	mount_uploader :picturebike, ImageUploader
end