require 'test_helper'

class MapRControllerTest < ActionDispatch::IntegrationTest
  test "should get mapr" do
    get map_r_mapr_url
    assert_response :success
  end

end
