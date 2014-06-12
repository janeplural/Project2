class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|

      t.string :type               #aka sub-class

      t.string :eventable_type    #polymorphic interface
      t.integer :eventable_id

      t.string :name
      t.text :description
      t.string :image_url

      t.datetime :start
      t.datetime :end
      
      t.timestamps
    end
  end
end
