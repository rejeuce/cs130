require 'test_helper'

class MapControllerTest < ActionDispatch::IntegrationTest
  test "should get map" do
    get map_map_url
    assert_response :success
  end

end
