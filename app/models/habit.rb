class Habit < ApplicationRecord
  belongs_to :user
   has_many :habit_logs, dependent: :destroy

  
  validates :title, presence: true, length: { maximum: 100 }
end

