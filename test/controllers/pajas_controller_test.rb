require 'test_helper'

class PajasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
