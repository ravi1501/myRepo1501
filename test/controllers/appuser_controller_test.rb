require 'test_helper'

class AppuserControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get appuser_index_url
    assert_response :success
  end

end
