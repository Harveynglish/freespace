class Space < ActiveRecord::Base
  validates :name, presence: true

  belongs_to  :user
  has_many :available_times
  has_many :available_date_ranges
end
