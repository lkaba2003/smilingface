class Post < ActiveRecord::Base
	belongs_to :user
	

	validates :user_id, presence: true 
	validates :content, presence: true

	mount_uploader :image, ImageUploader
	validates :image, :presence => {:width => 300, :height => 300}
	validates :image, :presence => {:message => 'should be < 300 x 300'}
	
end
