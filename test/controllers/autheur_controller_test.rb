require 'test_helper'

class AutheurControllerTest < ActionDispatch::IntegrationTest
  test "should get content" do
    get autheur_content_url
    assert_response :success
  end

end
