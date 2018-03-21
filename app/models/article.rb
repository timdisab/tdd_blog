class Article < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :body, presence: true

  default_scope { order(created_at: :desc)}

  belongs_to :user
  has_many :comments, dependent: :destroy
end
