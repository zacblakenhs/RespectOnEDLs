require 'test_helper'

class ConsultantsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get consultants_new_url
    assert_response :success
  end

  test "should get create" do
    get consultants_create_url
    assert_response :success
  end

  test "should get destroy" do
    get consultants_destroy_url
    assert_response :success
  end

end
