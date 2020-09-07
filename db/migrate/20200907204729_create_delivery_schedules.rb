class CreateDeliverySchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :delivery_schedules do |t|
      t.string :day
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
