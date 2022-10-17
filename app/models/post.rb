class Post < ApplicationRecord
  validates :title, :link, :user, presence: true

  has_many :comments
  belongs_to :user
end
