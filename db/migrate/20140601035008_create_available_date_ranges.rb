class CreateAvailableDateRanges < ActiveRecord::Migration
  def change
    create_table :available_date_ranges do |t|
      t.belongs_to  :space
      t.date        :start_date
      t.date        :end_date

      t.timestamps
    end
  end
end
