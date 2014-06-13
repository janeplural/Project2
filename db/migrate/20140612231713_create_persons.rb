class CreatePersons < ActiveRecord::Migration
  def change
    create_table :persons do |t|
      
      t.string :family_id

      # t.integer :member_id
      # t.string :member_type

      t.string :nickname
      t.string :first_name
      t.string :last_name
      
      t.text :description
      t.text :notes_on_availability

      t.string :facebook_username
      t.string :uploaded_headshot_url
      t.string :headshot_used

      t.timestamps
    end
  end
end
