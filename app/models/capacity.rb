class Capacity < ActiveRecord::Base
  has_many  :spaces
  has_many  :events
end