require 'test_helper'

class BucketlistControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get list" do
    get :list
    assert_response :success
  end

  test "should get write" do
    get :write
    assert_response :success
  end

end
