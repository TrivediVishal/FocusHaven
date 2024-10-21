require "test_helper"

class FocusMusicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @focus_music = focus_musics(:one)
  end

  test "should get index" do
    get focus_musics_url
    assert_response :success
  end

  test "should get new" do
    get new_focus_music_url
    assert_response :success
  end

  test "should create focus_music" do
    assert_difference("FocusMusic.count") do
      post focus_musics_url, params: { focus_music: { url: @focus_music.url } }
    end

    assert_redirected_to focus_music_url(FocusMusic.last)
  end

  test "should show focus_music" do
    get focus_music_url(@focus_music)
    assert_response :success
  end

  test "should get edit" do
    get edit_focus_music_url(@focus_music)
    assert_response :success
  end

  test "should update focus_music" do
    patch focus_music_url(@focus_music), params: { focus_music: { url: @focus_music.url } }
    assert_redirected_to focus_music_url(@focus_music)
  end

  test "should destroy focus_music" do
    assert_difference("FocusMusic.count", -1) do
      delete focus_music_url(@focus_music)
    end

    assert_redirected_to focus_musics_url
  end
end
