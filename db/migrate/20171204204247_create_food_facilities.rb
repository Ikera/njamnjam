class CreateFoodFacilities < ActiveRecord::Migration[5.0]
  def change
    create_table :food_facilities do |t|
      t.string :name, index: true
      t.text :description

      t.timestamps
    end
  end
end
