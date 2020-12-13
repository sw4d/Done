require "test_helper"

class EndOfDaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @end_of_day = end_of_days(:one)
  end

  test "should get index" do
    get end_of_days_url
    assert_response :success
  end

  test "should get new" do
    get new_end_of_day_url
    assert_response :success
  end

  test "should create end_of_day" do
    assert_difference('EndOfDay.count') do
      post end_of_days_url, params: { end_of_day: { concerns: @end_of_day.concerns, got_done: @end_of_day.got_done, hours_in_meetings: @end_of_day.hours_in_meetings, hours_on_expected_tasks: @end_of_day.hours_on_expected_tasks, hours_on_unexpected_tasks: @end_of_day.hours_on_unexpected_tasks, learned: @end_of_day.learned, published: @end_of_day.published, to_do: @end_of_day.to_do, user_id: @end_of_day.user_id } }
    end

    assert_redirected_to end_of_day_url(EndOfDay.last)
  end

  test "should show end_of_day" do
    get end_of_day_url(@end_of_day)
    assert_response :success
  end

  test "should get edit" do
    get edit_end_of_day_url(@end_of_day)
    assert_response :success
  end

  test "should update end_of_day" do
    patch end_of_day_url(@end_of_day), params: { end_of_day: { concerns: @end_of_day.concerns, got_done: @end_of_day.got_done, hours_in_meetings: @end_of_day.hours_in_meetings, hours_on_expected_tasks: @end_of_day.hours_on_expected_tasks, hours_on_unexpected_tasks: @end_of_day.hours_on_unexpected_tasks, learned: @end_of_day.learned, published: @end_of_day.published, to_do: @end_of_day.to_do, user_id: @end_of_day.user_id } }
    assert_redirected_to end_of_day_url(@end_of_day)
  end

  test "should destroy end_of_day" do
    assert_difference('EndOfDay.count', -1) do
      delete end_of_day_url(@end_of_day)
    end

    assert_redirected_to end_of_days_url
  end
end
