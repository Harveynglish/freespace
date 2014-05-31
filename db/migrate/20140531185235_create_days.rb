class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.string  :name
    end
  end
end
