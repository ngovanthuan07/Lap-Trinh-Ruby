require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get view" do
    get products_view_url
    assert_response :success
  end
end
