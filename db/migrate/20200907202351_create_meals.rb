class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.integer :offer_price
      t.text :description
      t.string :restriction

      t.timestamps
    end
  end
end
