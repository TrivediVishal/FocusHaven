require "application_system_test_case"

class FocusMusicsTest < ApplicationSystemTestCase
  setup do
    @focus_music = focus_musics(:one)
  end

  test "visiting the index" do
    visit focus_musics_url
    assert_selector "h1", text: "Focus musics"
  end

  test "should create focus music" do
    visit focus_musics_url
    click_on "New focus music"

    fill_in "Url", with: @focus_music.url
    click_on "Create Focus music"

    assert_text "Focus music was successfully created"
    click_on "Back"
  end

  test "should update Focus music" do
    visit focus_music_url(@focus_music)
    click_on "Edit this focus music", match: :first

    fill_in "Url", with: @focus_music.url
    click_on "Update Focus music"

    assert_text "Focus music was successfully updated"
    click_on "Back"
  end

  test "should destroy Focus music" do
    visit focus_music_url(@focus_music)
    click_on "Destroy this focus music", match: :first

    assert_text "Focus music was successfully destroyed"
  end
end
