require "application_system_test_case"

class EndOfDaysTest < ApplicationSystemTestCase
  setup do
    @end_of_day = end_of_days(:one)
  end

  test "visiting the index" do
    visit end_of_days_url
    assert_selector "h1", text: "End Of Days"
  end

  test "creating a End of day" do
    visit end_of_days_url
    click_on "New End Of Day"

    fill_in "Concerns", with: @end_of_day.concerns
    fill_in "Got done", with: @end_of_day.got_done
    fill_in "Hours in meetings", with: @end_of_day.hours_in_meetings
    fill_in "Hours on expected tasks", with: @end_of_day.hours_on_expected_tasks
    fill_in "Hours on unexpected tasks", with: @end_of_day.hours_on_unexpected_tasks
    fill_in "Learned", with: @end_of_day.learned
    fill_in "Published", with: @end_of_day.published
    fill_in "To do", with: @end_of_day.to_do
    fill_in "User", with: @end_of_day.user_id
    click_on "Create End of day"

    assert_text "End of day was successfully created"
    click_on "Back"
  end

  test "updating a End of day" do
    visit end_of_days_url
    click_on "Edit", match: :first

    fill_in "Concerns", with: @end_of_day.concerns
    fill_in "Got done", with: @end_of_day.got_done
    fill_in "Hours in meetings", with: @end_of_day.hours_in_meetings
    fill_in "Hours on expected tasks", with: @end_of_day.hours_on_expected_tasks
    fill_in "Hours on unexpected tasks", with: @end_of_day.hours_on_unexpected_tasks
    fill_in "Learned", with: @end_of_day.learned
    fill_in "Published", with: @end_of_day.published
    fill_in "To do", with: @end_of_day.to_do
    fill_in "User", with: @end_of_day.user_id
    click_on "Update End of day"

    assert_text "End of day was successfully updated"
    click_on "Back"
  end

  test "destroying a End of day" do
    visit end_of_days_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "End of day was successfully destroyed"
  end
end
