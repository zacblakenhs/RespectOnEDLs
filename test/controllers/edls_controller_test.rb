require 'test_helper'

class EdlsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get edls_new_url
    assert_response :success
  end

  test "should get create" do
    get edls_create_url
    assert_response :success
  end

  test "should get show" do
    get edls_show_url
    assert_response :success
  end

  test "should get edit" do
    get edls_edit_url
    assert_response :success
  end

  test "should get update" do
    get edls_update_url
    assert_response :success
  end

end
