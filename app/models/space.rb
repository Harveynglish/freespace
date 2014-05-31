class Space < ActiveRecord::Base
  belongs_to  :user
  belongs_to  :capacity
end
