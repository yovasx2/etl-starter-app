require 'test_helper'

class UnitsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get units_index_url
    assert_response :success
  end

  test "should get trigger" do
    get units_trigger_url
    assert_response :success
  end

  test "should get import" do
    get units_import_url
    assert_response :success
  end

end
