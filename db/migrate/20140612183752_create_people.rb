class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      
      t.string :type                      #aka sub-class

      t.string :personable_type    #polymorphic interface
      t.integer :personable_id
      

      t.string :nickname
      t.string :first_name
      t.string :last_name

      t.text :description
      t.text :notes_on_availability
      
      
      t.string :primary_headshot            #'uploaded_image' OR 'facebook_profile'
      t.string :uploaded_headshot_url
      t.string :facebook_username
      

      t.timestamps
    end
  end
end
