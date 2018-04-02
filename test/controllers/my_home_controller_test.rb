require 'test_helper'

class MyHomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get my_home_index_url
    assert_response :success
  end

end
