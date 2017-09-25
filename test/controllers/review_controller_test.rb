require 'test_helper'

class ReviewControllerTest < ActionDispatch::IntegrationTest
  test "should get get" do
    get review_get_url
    assert_response :success
  end

  test "should get add" do
    get review_add_url
    assert_response :success
  end

  test "should get getRestaurantReview" do
    get review_getRestaurantReview_url
    assert_response :success
  end

end
