class Availability < ActiveRecord::Base
  belongs_to  :space
  belongs_to  :day
end