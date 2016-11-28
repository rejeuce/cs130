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

  test 'populated html successfully' do
    setup_webstub
    get "/"
    assert_select "a","About"
  end

  test "should get home" do
    get home_landing_url
    assert_response :success
  end

  test 'tem' do
    setup_webstub
    # @image = Image.create!(url: @url)
    # get :show, id: @image.id
    # assert_response :success

  end

end
