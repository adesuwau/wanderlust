# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class User < ActiveRecord::Base
  has_many :trips
  has_many :wishlists
  validates :username, :email, :fave_travel_quote, :password_digest, presence: true
  validates :email, uniqueness: true
  has_secure_password
end
