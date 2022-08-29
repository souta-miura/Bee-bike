require "test_helper"

class User::CcClassesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get user_cc_classes_show_url
    assert_response :success
  end
end
