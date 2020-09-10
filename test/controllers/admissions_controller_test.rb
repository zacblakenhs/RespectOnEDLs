require 'test_helper'

class AdmissionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admissions_new_url
    assert_response :success
  end

  test "should get show" do
    get admissions_show_url
    assert_response :success
  end

  test "should get edit" do
    get admissions_edit_url
    assert_response :success
  end

  test "should get update" do
    get admissions_update_url
    assert_response :success
  end

end
