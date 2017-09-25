require 'test_helper'

class CuisineControllerTest < ActionDispatch::IntegrationTest
  test "should get all" do
    get cuisine_all_url
    assert_response :success
  end

end
