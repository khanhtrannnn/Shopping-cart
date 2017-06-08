require 'test_helper'

class AdminpageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get adminpage_index_url
    assert_response :success
  end

end
