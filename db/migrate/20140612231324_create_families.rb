class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.string :nickname

      t.timestamps
    end
  end
end
