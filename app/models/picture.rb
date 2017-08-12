class Picture < ActiveRecord::Base
	belongs_to :imageable, polymorphic: true
	mount_uploader :attachments, ImageUploader
end
