class CreateDailyPlans < ActiveRecord::Migration[6.1]
  def change
    create_table :daily_plans do |t|
      t.date :date

      t.timestamps
    end
  end
end
