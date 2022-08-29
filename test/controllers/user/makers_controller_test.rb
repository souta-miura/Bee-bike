require "test_helper"

class User::MakersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get user_makers_show_url
    assert_response :success
  end
end
