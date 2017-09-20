require 'test_helper'

class RestaurantsControllerTest < ActionDispatch::IntegrationTest
  test "should get all" do
    get restaurants_all_url
    assert_response :success
  end

  test "should get get" do
    get restaurants_get_url
    assert_response :success
  end

  test "should get create" do
    get restaurants_create_url
    assert_response :success
  end

  test "should get update" do
    get restaurants_update_url
    assert_response :success
  end

end
