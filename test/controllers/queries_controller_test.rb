require 'test_helper'

class QueriesControllerTest < ActionDispatch::IntegrationTest
  test "should get new_participants" do
    get queries_new_participants_url
    assert_response :success
  end

  test "should get updated_participants" do
    get queries_updated_participants_url
    assert_response :success
  end

  test "should get has_new_data" do
    get queries_has_new_data_url
    assert_response :success
  end

end
