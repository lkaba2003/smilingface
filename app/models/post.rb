class Post < ActiveRecord::Base
	belongs_to :user
	

	validates :user_id, presence: true 
	validates :content, presence: true

	mount_uploader :image, ImageUploader
	
	validates :image, :presence => {:message => 'Please Upload 250x250 Image'}

	validate :image_size_validation, :if => "image?"

	def image_size_validation
	    if image.size > 30.kilobytes
	      errors.add(:base, "Image should be 250x250 or less")
	    end
	 end
	
end
