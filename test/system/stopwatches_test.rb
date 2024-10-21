require "application_system_test_case"

class StopwatchesTest < ApplicationSystemTestCase
  setup do
    @stopwatch = stopwatches(:one)
  end

  test "visiting the index" do
    visit stopwatches_url
    assert_selector "h1", text: "Stopwatches"
  end

  test "should create stopwatch" do
    visit stopwatches_url
    click_on "New stopwatch"

    fill_in "Completed at", with: @stopwatch.completed_at
    fill_in "Duration", with: @stopwatch.duration
    fill_in "Started at", with: @stopwatch.started_at
    click_on "Create Stopwatch"

    assert_text "Stopwatch was successfully created"
    click_on "Back"
  end

  test "should update Stopwatch" do
    visit stopwatch_url(@stopwatch)
    click_on "Edit this stopwatch", match: :first

    fill_in "Completed at", with: @stopwatch.completed_at.to_s
    fill_in "Duration", with: @stopwatch.duration
    fill_in "Started at", with: @stopwatch.started_at.to_s
    click_on "Update Stopwatch"

    assert_text "Stopwatch was successfully updated"
    click_on "Back"
  end

  test "should destroy Stopwatch" do
    visit stopwatch_url(@stopwatch)
    click_on "Destroy this stopwatch", match: :first

    assert_text "Stopwatch was successfully destroyed"
  end
end
