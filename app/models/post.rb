class Post < ApplicationRecord
	belongs_to :user
	has_many :comments
	has_one :forumcateg
	mount_uploader :image, ImageUploader
end
