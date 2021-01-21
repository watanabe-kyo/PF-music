require 'test_helper'

class EndUsers::MusicsControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get end_users_musics_search_url
    assert_response :success
  end

end
