require 'rails_helper'

RSpec.describe Habit, type: :model do
  it "is valid with a title" do
    habit = Habit.new(title: "Exercise")
    expect(habit).to be_valid
  end

  it "is invalid without a title" do
    habit = Habit.new(title: nil)
    expect(habit).not_to be_valid
  end
end