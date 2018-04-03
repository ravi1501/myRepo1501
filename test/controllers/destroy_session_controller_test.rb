require 'test_helper'

class DestroySessionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get destroy_session_index_url
    assert_response :success
  end

end
