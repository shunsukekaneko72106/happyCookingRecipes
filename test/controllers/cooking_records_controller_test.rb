require 'test_helper'

class CookingRecordsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cooking_records_index_url
    assert_response :success
  end

end
