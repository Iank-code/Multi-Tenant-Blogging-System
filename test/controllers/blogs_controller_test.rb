require "test_helper"

class BlogsControllerTest < ActionDispatch::IntegrationTest
  test "should get content" do
    get blogs_content_url
    assert_response :success
  end
end
