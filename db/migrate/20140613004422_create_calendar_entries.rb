class CreateCalendarEntries < ActiveRecord::Migration
  def change
    create_table :calendar_entries do |t|
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.string :name
      t.string :image_url
      t.integer :family_id
      t.text :desription

      # This may eventually become the guts of a polymoric interface
      t.string :event_type      # either :childcare, :appointment, or :happening
      t.integer :event_id


      t.timestamps
    end
  end
end
