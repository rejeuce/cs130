require 'test_helper'

class MoviesControllerTest < ActionDispatch::IntegrationTest
  test "should get list" do
    get movies_list_url
    assert_response :success
  end

end
