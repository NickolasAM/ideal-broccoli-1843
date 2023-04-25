class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :description
      t.string :days_to_havest
      t.string :integer

      t.timestamps
    end
  end
end
