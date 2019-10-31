require 'test_helper'

class GossipControllerTest < ActionDispatch::IntegrationTest
  test "should get content" do
    get gossip_content_url
    assert_response :success
  end

end
