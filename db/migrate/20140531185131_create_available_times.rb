class CreateAvailableTimes < ActiveRecord::Migration
  def change
    create_table :available_times do |t|
      t.belongs_to  :space
      t.belongs_to  :day
      t.time        :start_time
      t.time        :end_time

      t.timestamps
    end
  end
end
