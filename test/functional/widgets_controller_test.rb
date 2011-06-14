require 'test_helper'

class WidgetsControllerTest < ActionController::TestCase
  test "should get arrow" do
    get :arrow
    assert_response :success
  end

  test "should get bargraph" do
    get :bargraph
    assert_response :success
  end

  test "should get bubblelist" do
    get :bubblelist
    assert_response :success
  end

  test "should get clock" do
    get :clock
    assert_response :success
  end

  test "should get countdown" do
    get :countdown
    assert_response :success
  end

  test "should get grid" do
    get :grid
    assert_response :success
  end

  test "should get meta" do
    get :meta
    assert_response :success
  end

  test "should get space" do
    get :space
    assert_response :success
  end

  test "should get weather" do
    get :weather
    assert_response :success
  end

  test "should get newsticker" do
    get :newsticker
    assert_response :success
  end

  test "should get stockticker" do
    get :stockticker
    assert_response :success
  end

end
