class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :regional_group

      t.timestamps
    end
  end
end
