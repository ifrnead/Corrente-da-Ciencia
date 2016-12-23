require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get what" do
    get :what
    assert_response :success
  end

  test "should get who" do
    get :who
    assert_response :success
  end

  test "should get results" do
    get :results
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
