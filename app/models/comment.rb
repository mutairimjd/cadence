class Comment < ApplicationRecord
  belongs_to :song
  validates :commenter ,:body ,presence: true

end
