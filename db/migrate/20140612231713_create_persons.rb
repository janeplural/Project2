class CreatePersons < ActiveRecord::Migration
  def change
    create_table :persons do |t|
      
      # JOIN table 'participations' connects persons to events
      t.string :type # Single Table Inheritance. Child, Caregiver, User < Caregiver
      t.string :family_id  #belongs to family

      t.string :nickname
      t.string :first_name
      t.string :last_name      
      t.text :description

      t.string :headshot_type
      t.string :facebook_username
      t.string :headshot_upload_url


    


      #stuff that belongs in the child class


      #stuff that belongs in the caregiver class
      t.text :notes_on_availability


      #stuff that belongs in the user class

      t.timestamps
    end
  end
end
