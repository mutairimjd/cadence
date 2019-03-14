class Song < ApplicationRecord

  has_many :comments, dependent: :destroy
  validates :title, presence: true,
  length: { minimum: 5 } 
   belongs_to :catogrie
   belongs_to :user
   has_many :likes, dependent: :destroy
   validates :title, :artist, :catogrie, :url, presence: true
    
    validate :image_size_validation
   mount_uploader :url, AudioUploader
   mount_uploader :image, ImageUploader
end

private
  def image_size_validation
    errors[:image] << "should be less than 500KB" if image.size > 0.5.megabytes
end
