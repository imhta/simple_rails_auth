class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 50}
end
