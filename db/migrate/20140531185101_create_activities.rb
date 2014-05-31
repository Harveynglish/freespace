class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.belongs_to  :user
      t.string      :name
      t.text        :description
      t.references  :capacity
      t.text        :comments

      t.timestamps
    end
  end
end
