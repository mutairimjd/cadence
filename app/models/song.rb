class Song < ApplicationRecord
   belongs_to :user
   validates :title, :artist, :catogries, :url, presence: true
  
end
