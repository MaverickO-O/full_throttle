class Post < ApplicationRecord
	belongs_to :user
	has_many :comments
	has_one :forumcateg

	has_one_attached :image


	def thumbnail
		return self.image.variant(resize: '200x200').processed
	end

end
