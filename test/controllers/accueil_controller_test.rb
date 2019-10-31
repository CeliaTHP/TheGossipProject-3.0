require 'test_helper'

class AccueilControllerTest < ActionDispatch::IntegrationTest
  test "should get bienvenue" do
    get accueil_bienvenue_url
    assert_response :success
  end

end
