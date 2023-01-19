require "test_helper"

class StudentgradesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get studentgrades_index_url
    assert_response :success
  end
end
