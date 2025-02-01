require "test_helper"

class RacipesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @racipe = racipes(:one)
  end

  test "should get index" do
    get racipes_url
    assert_response :success
  end

  test "should get new" do
    get new_racipe_url
    assert_response :success
  end

  test "should create racipe" do
    assert_difference("Racipe.count") do
      post racipes_url, params: { racipe: { description: @racipe.description, title: @racipe.title } }
    end

    assert_redirected_to racipe_url(Racipe.last)
  end

  test "should show racipe" do
    get racipe_url(@racipe)
    assert_response :success
  end

  test "should get edit" do
    get edit_racipe_url(@racipe)
    assert_response :success
  end

  test "should update racipe" do
    patch racipe_url(@racipe), params: { racipe: { description: @racipe.description, title: @racipe.title } }
    assert_redirected_to racipe_url(@racipe)
  end

  test "should destroy racipe" do
    assert_difference("Racipe.count", -1) do
      delete racipe_url(@racipe)
    end

    assert_redirected_to racipes_url
  end
end
