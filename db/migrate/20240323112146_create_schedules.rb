class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.datetime :start_date
      t.references :tutor, null: false, foreign_key: true

      t.timestamps
    end
    add_index :schedules, [:start_date, :tutor_id], unique: true
  end
end
