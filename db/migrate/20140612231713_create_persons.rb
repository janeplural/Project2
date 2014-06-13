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

      t.string :facebook_username
      t.string :uploaded_headshot_url
      t.string :headshot_used

      # This may eventually become the guts of a polymoric interface
        t.boolean :is_child      
        t.boolean :is_caregiver
        t.boolean :is_user


      #stuff that belongs in the child class


      #stuff that belongs in the caregiver class
        t.text :notes_on_availability


      #stuff that belongs in the user class

      t.timestamps
    end
  end
end
