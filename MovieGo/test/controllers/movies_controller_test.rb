require 'test_helper'

class MoviesControllerTest < ActionDispatch::IntegrationTest

  test "should get list" do
    get movies_url
    assert_response :success
  end

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
    get "/movies"
    assert_select "p", "Movies Near You:"
    assert_select "input", 1
    assert_select "button","Search"
    assert_select "button", 3
  end

end
