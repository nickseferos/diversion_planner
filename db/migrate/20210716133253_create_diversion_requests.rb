class CreateDiversionRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :diversion_requests do |t|
      t.string :container_number
      t.integer :set_asides_required
      t.string :current_row
      t.references :line, null: false, foreign_key: true
      t.references :daily_plan, null: false, foreign_key: true

      t.timestamps
    end
  end
end
