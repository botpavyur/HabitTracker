class RemoveUserIdFromHabits < ActiveRecord::Migration[8.0]
  def change
    remove_reference :habits, :user, null: false, foreign_key: true
  end
end
