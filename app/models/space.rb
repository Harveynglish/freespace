class Space < ActiveRecord::Base
  validates :name, presence: true

  belongs_to  :user
  has_many :available_times
  has_many :available_date_ranges

  scope :available_for_capacity_of, -> event { where("capacity >= ?", event.activity.capacity) }
  scope :available_for_date_range_of, -> event { where("available_date_ranges.start_date <= ? AND (available_date_ranges.end_date IS NULL OR available_date_ranges.end_date >= ?)", event.start_time.to_date, event.end_time.to_date) }
  scope :available_for_single_day_time_of, -> event { where("(available_all_hours = true) OR (day_id = ? AND start_time <= ? AND end_time >= ?)", event.start_time.day, event.start_time_as_int, event.end_time_as_int) }
  scope :available_for_late_night_time_of, -> event { where("(available_all_hours = true) OR ((available_times.day_id = ? AND available_times.start_time <= ?) AND (available_times.day_id = ? AND available_times.start_time = 0 AND available_times.end_time >= ?))", event.start_time.day, event.start_time_as_int, event.start_time.day + 1, event.end_time_as_int) }

  def self.available_for(event)
    if event.late_night?
      self.late_night_availabilities_for(event)
    else
      self.single_day_availabilities_for(event)
    end
  end

  def self.single_day_availabilities_for(event)
    includes(:available_times, :available_date_ranges)
    .references(:available_times, :available_date_ranges)
    .available_for_capacity_of(event)
    .available_for_date_range_of(event)
    .available_for_single_day_time_of(event)
  end

  def self.late_night_availabilities_for(event)
    includes(:available_times, :available_date_ranges)
    .references(:available_times, :available_date_ranges)
    .available_for_capacity_of(event)
    .available_for_date_range_of(event)
    .available_for_late_night_time_of(event)
  end
end
