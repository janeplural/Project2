class CreateCalendarEntries < ActiveRecord::Migration
  def change
    create_table :calendar_entries do |t|
      
      # JOIN table 'participations' connects events to persons
      t.string :type # Single Table Inheritance. Appointment, Childcare, Happening
      t.integer :family_id  #belongs to family #FIX

      t.datetime :start_datetime
      t.datetime :end_datetime
      
      t.string :name
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end
end
