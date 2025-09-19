require 'rails_helper'

RSpec.describe HabitsController, type: :controller do
  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    it "creates a new habit" do
      expect {
        post :create, params: { habit: { title: "Read book" } }
      }.to change(Habit, :count).by(1)
    end
  end
end