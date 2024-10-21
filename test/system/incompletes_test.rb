require "application_system_test_case"

class IncompletesTest < ApplicationSystemTestCase
  setup do
    @incomplete = incompletes(:one)
  end

  test "visiting the index" do
    visit incompletes_url
    assert_selector "h1", text: "Incompletes"
  end

  test "should create incomplete" do
    visit incompletes_url
    click_on "New incomplete"

    fill_in "Reason", with: @incomplete.reason
    click_on "Create Incomplete"

    assert_text "Incomplete was successfully created"
    click_on "Back"
  end

  test "should update Incomplete" do
    visit incomplete_url(@incomplete)
    click_on "Edit this incomplete", match: :first

    fill_in "Reason", with: @incomplete.reason
    click_on "Update Incomplete"

    assert_text "Incomplete was successfully updated"
    click_on "Back"
  end

  test "should destroy Incomplete" do
    visit incomplete_url(@incomplete)
    click_on "Destroy this incomplete", match: :first

    assert_text "Incomplete was successfully destroyed"
  end
end
