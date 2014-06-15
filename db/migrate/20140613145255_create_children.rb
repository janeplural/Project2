class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :index

      t.timestamps
    end
  end
end
