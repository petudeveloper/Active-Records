class User < ApplicationRecord
  validates :user_name, presence: true
  validates :user_name, uniqueness: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :email, format: { with:URI::MailTo::EMAIL_REGEXP}
  has_many :posts
  has_many :comments, through: :posts
end
