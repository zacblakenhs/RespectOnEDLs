require 'test_helper'

class RespectformsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get respectforms_new_url
    assert_response :success
  end

  test "should get create" do
    get respectforms_create_url
    assert_response :success
  end

  test "should get show" do
    get respectforms_show_url
    assert_response :success
  end

  test "should get edit" do
    get respectforms_edit_url
    assert_response :success
  end

  test "should get update" do
    get respectforms_update_url
    assert_response :success
  end

  test "should get print" do
    get respectforms_print_url
    assert_response :success
  end

end
