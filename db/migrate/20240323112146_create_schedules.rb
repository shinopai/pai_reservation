class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.date :start_date
      t.time :start_time
      t.references :tutor, null: false, foreign_key: true

      t.timestamps
    end
    add_index :schedules, [:start_date, :start_time, :tutor_id], unique: true
  end
end
