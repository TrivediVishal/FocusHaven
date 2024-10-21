require "application_system_test_case"

class SessionsTest < ApplicationSystemTestCase
  setup do
    @session = sessions(:one)
  end

  test "visiting the index" do
    visit sessions_url
    assert_selector "h1", text: "Sessions"
  end

  test "should create session" do
    visit sessions_url
    click_on "New session"

    fill_in "Completed at", with: @session.completed_at
    fill_in "Duation", with: @session.duation
    fill_in "Incomplete", with: @session.incomplete_id
    fill_in "Initial time", with: @session.initial_time
    check "Is completed" if @session.is_completed
    fill_in "Started at", with: @session.started_at
    click_on "Create Session"

    assert_text "Session was successfully created"
    click_on "Back"
  end

  test "should update Session" do
    visit session_url(@session)
    click_on "Edit this session", match: :first

    fill_in "Completed at", with: @session.completed_at.to_s
    fill_in "Duation", with: @session.duation
    fill_in "Incomplete", with: @session.incomplete_id
    fill_in "Initial time", with: @session.initial_time.to_s
    check "Is completed" if @session.is_completed
    fill_in "Started at", with: @session.started_at.to_s
    click_on "Update Session"

    assert_text "Session was successfully updated"
    click_on "Back"
  end

  test "should destroy Session" do
    visit session_url(@session)
    click_on "Destroy this session", match: :first

    assert_text "Session was successfully destroyed"
  end
end
