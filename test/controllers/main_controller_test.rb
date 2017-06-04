require 'test_helper'

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get main_login_url
    assert_response :success
  end

  test "should get login_success" do
    get main_login_success_url
    assert_response :success
  end

end
