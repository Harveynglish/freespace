class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.belongs_to  :space
      t.belongs_to  :activity
      t.datetime    :start_time
      t.datetime    :end_time

      t.timestamps
    end
  end
end
