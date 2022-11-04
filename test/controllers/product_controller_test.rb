require "test_helper"

class ProductControllerTest < ActionDispatch::IntegrationTest
  test "should get view" do
    get product_view_url
    assert_response :success
  end
end
