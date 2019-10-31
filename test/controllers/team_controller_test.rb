require 'test_helper'

class TeamControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get team_home_url
    assert_response :success
  end

end
