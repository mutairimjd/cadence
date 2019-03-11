class Song < ApplicationRecord
   belongs_to :catogrie
   belongs_to :user
   validates :title, :artist, :catogrie, :url, presence: true
end
