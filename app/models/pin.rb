class Pin < ApplicationRecord
	#has_one_attached :image
	has_many_attached :images
	scope :with_eager_loaded_images, -> { eager_load(images_attachments: :blob) }

end
