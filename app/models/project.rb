class Project < ApplicationRecord
	has_one_attached :image
	has_many_attached :pictures
	has_rich_text :body

	def image_as_thumbnail
		return unless image.content_type.in?(%w[iamge/jpeg image/png])
		image.variant(resize_to_limit: [300, 300]).processed
	end

	def pictures_as_thumbnails
		pictures.map do |picture|
			picture.variant(resize_to_limit: [150, 150])
		end
	end
end
