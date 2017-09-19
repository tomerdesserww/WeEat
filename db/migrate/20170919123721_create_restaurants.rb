class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :rating
      t.string :cuisine
      t.integer :delivery_sla_in_minutes

      t.timestamps
    end
  end
end
