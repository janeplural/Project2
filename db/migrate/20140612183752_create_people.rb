class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :nickname
      t.string :first_name
      t.string :last_name
      t.string :uploaded_image_url
      t.string :facebook_username
      t.text :notes_on_availability
      t.text :description

      t.timestamps
    end
  end
end
