require "rails_helper"

RSpec.describe Habit, type: :model do
  context "validations" do
    it "is valid with a title" do
      habit = Habit.new(title: "Drink water")
      expect(habit).to be_valid
    end

    it "is not valid without a title" do
      habit = Habit.new(title: nil)
      expect(habit).not_to be_valid
    end
  end
end