# == Schema Information
#
# Table name: trips
#
#  id          :integer          not null, primary key
#  trip_name   :string(255)
#  trip_date   :string(255)
#  description :text
#  fave_memory :string(255)
#  photo       :string(255)
#  city_id     :integer
#  user_id     :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Trip < ActiveRecord::Base
  belongs_to :city
  belongs_to :user
end
