class User < ActiveRecord::Base
  has_many :posts
  has_many :comments

  validates :name, presence: true
  validates :name, length: { minimum: 2 }
  validates :name, length: { maximum: 10 }

  validates :name, uniqueness: true
end
