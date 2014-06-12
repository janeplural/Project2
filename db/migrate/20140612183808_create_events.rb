class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :start
      t.datetime :end
      t.string :name
      t.text :description
      t.string :image_url
      t.string :eventable_type
      t.integer :eventable_id
      t.string :type

      t.timestamps
    end
  end
end
