class CreateCalendarEntries < ActiveRecord::Migration
  def change
    create_table :calendar_entries do |t|
      t.datetime :start
      t.datetime :end
      t.string :name
      t.string :image_url
      t.integer :family_id
      t.text :desription

      t.timestamps
    end
  end
end
