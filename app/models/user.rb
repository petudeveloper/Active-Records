class User < ApplicationRecord
  validates :user_name, presence: true
  validates :user_name, uniqueness: true
  validates :email, presence: true
  validates :email, uniqueness: true
  has_many :posts
  has_many :comments, through: :posts
end
