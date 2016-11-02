require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest

  def setup_webstub(host_url = 'http://www.example.com/')
    @url = host_url

    stub_request(:head, @url)
        .with(headers: { 'Accept': '*/*', 'User-Agent': 'Ruby' })
        .to_return(status: 200,
                   body: '',
                   headers: { 'content-type': 'image/jpg' })
  end

  test 'populate created image successfully' do
     setup_webstub
    # @image = Image.create!(url: @url)
    # get :show, id: @image.id
    # assert_response :success
    get "/home"
    assert_select "button","Try It"

  end

  test "should get home" do
    get home_home_url
    assert_response :success
  end

end
