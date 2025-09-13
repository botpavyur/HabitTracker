class CreateHabitLogs < ActiveRecord::Migration[8.0]
  def change
    create_table :habit_logs do |t|
      t.references :habit, null: false, foreign_key: true
      t.date :date
      t.boolean :status

      t.timestamps
    end
  end
end
