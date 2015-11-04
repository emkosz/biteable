class CreateFoodItems < ActiveRecord::Migration
  def change
    create_table :food_items do |t|
      t.string :name
      t.string :amount
      t.text :description

      t.timestamps null: false
    end
  end
end
