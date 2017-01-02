require 'test_helper'

class UserControllerTest < ActionController::TestCase
  test "should get sign_up" do
    get :sign_up
    assert_response :success
  end

  test "should get sign_up_complete" do
    get :sign_up_complete
    assert_response :success
  end

  test "should get log_in" do
    get :log_in
    assert_response :success
  end

  test "should get log_in_completelogout_complete" do
    get :log_in_completelogout_complete
    assert_response :success
  end

end
