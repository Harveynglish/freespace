class Event < ActiveRecord::Base
  belongs_to :activity
  belongs_to :space

  scope :unplaced, -> { where(space_id: nil) }
  scope :placed, -> { where("space_id IS NOT NULL") }

  # Public: strips the event start datetime to just the 24-hour time as a string ("HHMM")
  # then converts the string to an integer value (e.g. range = 0000 - 2359)
  def start_time_as_int
    start_time.strftime("%H%M").to_i
  end

  # Public: strips the event end datetime to just the 24-hour time as a string ("HHMM")
  # then converts the string to an integer value (e.g. range = 0000 - 2359)
  def end_time_as_int
    end_time.strftime("%H%M").to_i
  end

  # Public: returns true if the end time of an event goes beyond midnight, else false
  def late_night?
    end_time_as_int < start_time_as_int
  end
end