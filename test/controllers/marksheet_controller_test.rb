require "test_helper"

class MarksheetControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get marksheet_index_url
    assert_response :success
  end
end
