class Song < ApplicationRecord
   belongs_to :catogrie
   belongs_to :user
   validates :title, :artist, :catogrie, :url, presence: true
    
    validate :image_size_validation
   mount_uploader :url, AudioUploader
   mount_uploader :image, ImageUploader
end


private
  def image_size_validation
    errors[:image] << "should be less than 500KB" if image.size > 0.5.megabytes
  end