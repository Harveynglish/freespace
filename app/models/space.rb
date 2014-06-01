class Space < ActiveRecord::Base
  belongs_to  :user
  has_many :available_times
  has_many :available_date_ranges
end
