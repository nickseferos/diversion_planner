require "application_system_test_case"

class DailyPlansTest < ApplicationSystemTestCase
  setup do
    @daily_plan = daily_plans(:one)
  end

  test "visiting the index" do
    visit daily_plans_url
    assert_selector "h1", text: "Daily Plans"
  end

  test "creating a Daily plan" do
    visit daily_plans_url
    click_on "New Daily Plan"

    fill_in "Date", with: @daily_plan.date
    click_on "Create Daily plan"

    assert_text "Daily plan was successfully created"
    click_on "Back"
  end

  test "updating a Daily plan" do
    visit daily_plans_url
    click_on "Edit", match: :first

    fill_in "Date", with: @daily_plan.date
    click_on "Update Daily plan"

    assert_text "Daily plan was successfully updated"
    click_on "Back"
  end

  test "destroying a Daily plan" do
    visit daily_plans_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Daily plan was successfully destroyed"
  end
end
