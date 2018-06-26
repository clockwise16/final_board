require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get singup" do
    get :singup
    assert_response :success
  end

  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get logout" do
    get :logout
    assert_response :success
  end

  test "should get getout" do
    get :getout
    assert_response :success
  end

end
