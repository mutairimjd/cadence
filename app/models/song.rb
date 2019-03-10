class Song < ApplicationRecord
   
    validates :title, :artist, :catogries, presence: true
  
end
