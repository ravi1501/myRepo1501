require 'test_helper'

class RubyUserControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ruby_user_index_url
    assert_response :success
  end

end
