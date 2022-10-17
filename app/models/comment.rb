class Comment < ApplicationRecord
  validates :body, :user, :post, presence: true

  belongs_to :post
  belongs_to :user
end
