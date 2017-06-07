require 'test_helper'

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get show_product_types" do
    get main_show_product_types_url
    assert_response :success
  end

  test "should get show_products" do
    get main_show_products_url
    assert_response :success
  end

  test "should get search" do
    get main_search_url
    assert_response :success
  end

  test "should get cart" do
    get main_cart_url
    assert_response :success
  end

end
