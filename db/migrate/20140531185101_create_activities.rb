class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.belongs_to  :user
      t.string      :name
      t.text        :description
      t.integer     :capacity
      t.boolean     :volunteers_needed
      t.text        :comments
      t.boolean     :alternate_contact
      t.string      :contact_name
      t.string      :contact_organization
      t.string      :contact_phone
      t.string      :contact_email
      t.text        :admin_notes

      t.timestamps
    end
  end
end
