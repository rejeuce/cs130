require 'test_helper'

class HomeRControllerTest < ActionDispatch::IntegrationTest
  test "should get homer" do
    get home_r_homer_url
    assert_response :success
  end

end
