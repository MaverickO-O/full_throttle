class Bike < ApplicationRecord
	has_one :brand_bike_dbs
	has_many :users
	mount_uploader :pictureintro, ImageUploader
	mount_uploader :picturebike, ImageUploader
end