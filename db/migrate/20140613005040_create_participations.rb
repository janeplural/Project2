class CreateParticipations < ActiveRecord::Migration
  def change
    create_table :participations do |t|
      t.integer :person_id
      t.integer :calendar_entry_id

      t.string :name_DNU_just_for_debugging

      t.timestamps
    end
  end
end
