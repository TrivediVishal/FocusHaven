require "test_helper"

class StopwatchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stopwatch = stopwatches(:one)
  end

  test "should get index" do
    get stopwatches_url
    assert_response :success
  end

  test "should get new" do
    get new_stopwatch_url
    assert_response :success
  end

  test "should create stopwatch" do
    assert_difference("Stopwatch.count") do
      post stopwatches_url, params: { stopwatch: { completed_at: @stopwatch.completed_at, duration: @stopwatch.duration, started_at: @stopwatch.started_at } }
    end

    assert_redirected_to stopwatch_url(Stopwatch.last)
  end

  test "should show stopwatch" do
    get stopwatch_url(@stopwatch)
    assert_response :success
  end

  test "should get edit" do
    get edit_stopwatch_url(@stopwatch)
    assert_response :success
  end

  test "should update stopwatch" do
    patch stopwatch_url(@stopwatch), params: { stopwatch: { completed_at: @stopwatch.completed_at, duration: @stopwatch.duration, started_at: @stopwatch.started_at } }
    assert_redirected_to stopwatch_url(@stopwatch)
  end

  test "should destroy stopwatch" do
    assert_difference("Stopwatch.count", -1) do
      delete stopwatch_url(@stopwatch)
    end

    assert_redirected_to stopwatches_url
  end
end
