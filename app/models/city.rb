# == Schema Information
#
# Table name: cities
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  country_id :integer
#  created_at :datetime
#  updated_at :datetime
#

class City < ActiveRecord::Base
  belongs_to :country
  has_many :trips

  # validate :country_exists

  # def country_exists
  #   return true unless county_list.includes?(self.county)
  # end
end
