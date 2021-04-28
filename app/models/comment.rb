class Comment < ApplicationRecord
  validates :user_comments, presence: true
  belongs_to :user
  belongs_to :post
end
