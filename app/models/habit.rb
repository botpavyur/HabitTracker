class Habit < ApplicationRecord
  has_many :habit_logs, dependent: :destroy

  validates :title, presence: true
  # убираем belongs_to :user
end
