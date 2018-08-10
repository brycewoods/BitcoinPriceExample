require 'test_helper'

class ForexExampleControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get forex_example_index_url
    assert_response :success
  end

end
