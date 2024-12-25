require "test_helper"

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get Questions" do
    get categories_Questions_url
    assert_response :success
  end
end
