require "test_helper"

class KillteamsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get killteams_index_url
    assert_response :success
  end

  test "should get show" do
    get killteams_show_url
    assert_response :success
  end
end
