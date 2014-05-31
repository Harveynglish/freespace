class CreateCapacities < ActiveRecord::Migration
  def change
    create_table :capacities do |t|
      t.string  :range
    end
  end
end
