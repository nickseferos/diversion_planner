class CreateLines < ActiveRecord::Migration[6.1]
  def change
    create_table :lines do |t|
      t.string :name
      t.float :diversion_rate

      t.timestamps
    end
  end
end
