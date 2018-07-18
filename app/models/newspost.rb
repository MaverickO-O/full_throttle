class Newspost < ApplicationRecord
	belongs_to :user
	has_one_attached :image


	def thumbnail
		return self.image.variant(resize: '120x120').processed
	end

end
