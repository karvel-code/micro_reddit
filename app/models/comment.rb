class Comment < ApplicationRecord
  validates :user_comments, presence: true
  t.belongs_to :user
  t.belongs_to :post
end
