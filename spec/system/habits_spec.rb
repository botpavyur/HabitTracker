require "rails_helper"

RSpec.describe "Habit management", type: :system do
  before do
    driven_by(:rack_test)
  end

  it "user creates a new habit" do
    visit habits_path

    click_link "Добавить новую привычку"

    fill_in "Title", with: "Go jogging"
    click_button "Сохранить"

    expect(page).to have_content("Go jogging")
  end

  it "user deletes a habit" do
    Habit.create!(title: "Read a book")

    visit habits_path

    expect(page).to have_content("Read a book")

    click_button "Удалить"

    expect(page).not_to have_content("Read a book")
  end

  it "user edits a habit" do
    Habit.create!(title: "Drink coffee")

    visit habits_path

    click_link "Редактировать"

    fill_in "Title", with: "Drink tea"
    click_button "Сохранить"

    expect(page).to have_content("Drink tea")
    expect(page).not_to have_content("Drink coffee")
  end
end