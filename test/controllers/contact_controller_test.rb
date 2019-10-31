require 'test_helper'

class ContactControllerTest < ActionDispatch::IntegrationTest
  test "should get contact_us" do
    get contact_contact_us_url
    assert_response :success
  end

end
