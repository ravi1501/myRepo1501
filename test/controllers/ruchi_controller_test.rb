require 'test_helper'

class RuchiControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ruchi_index_url
    assert_response :success
  end

end
