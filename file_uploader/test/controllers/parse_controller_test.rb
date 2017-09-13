require 'test_helper'

class ParseControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get parse_index_url
    assert_response :success
  end

  test "should get show" do
    get parse_show_url
    assert_response :success
  end

end
