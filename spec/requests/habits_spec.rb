require "rails_helper"

RSpec.describe "Habits", type: :request do
  describe "POST /habits" do
    it "creates a new habit with valid params" do
      expect {
        post habits_path, params: { habit: { title: "Read a book" } }
      }.to change(Habit, :count).by(1)

      follow_redirect!
      expect(response.body).to include("Read a book")
    end

    it "does not create a habit with invalid params" do
      expect {
        post habits_path, params: { habit: { title: "" } }
      }.not_to change(Habit, :count)

      expect(response.body).to include("error")
    end
  end
end