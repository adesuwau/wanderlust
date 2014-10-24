class User < ActiveRecord::Base
  has_many :trips
  validates :username, :email, :password_digest, presence: true
  validates :email, uniqueness: true
end
