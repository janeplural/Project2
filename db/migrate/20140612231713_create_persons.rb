class CreatePersons < ActiveRecord::Migration
  def change
    create_table :persons do |t|
      
      # JOIN table 'participations' connects persons to events
      t.string :type # Single Table Inheritance. Child, Caregiver, User < Caregiver
      t.string :family_id  #belongs to family

      t.string :nickname
      t.string :first_name
      t.string :last_name      
     

      #stuff that serves in the child class
        t.datetime :day_start_time
        t.datetime :day_end_time

      #stuff that serves in the caregiver class
        t.text :notes_on_availability
        t.text :description

        t.string :headshot_type
        t.string :facebook_username
        t.string :paperclip_headshot_url
        t.string :other_headshot_url


      #stuff that serves in the user class
        #see seperate devise migration


      t.timestamps
      
    end
  end
end
