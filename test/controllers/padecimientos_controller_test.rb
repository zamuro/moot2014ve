require 'test_helper'

class PadecimientosControllerTest < ActionController::TestCase
  setup do
    @padecimiento = padecimientos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:padecimientos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create padecimiento" do
    assert_difference('Padecimiento.count') do
      post :create, padecimiento: {  }
    end

    assert_redirected_to padecimiento_path(assigns(:padecimiento))
  end

  test "should show padecimiento" do
    get :show, id: @padecimiento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @padecimiento
    assert_response :success
  end

  test "should update padecimiento" do
    patch :update, id: @padecimiento, padecimiento: {  }
    assert_redirected_to padecimiento_path(assigns(:padecimiento))
  end

  test "should destroy padecimiento" do
    assert_difference('Padecimiento.count', -1) do
      delete :destroy, id: @padecimiento
    end

    assert_redirected_to padecimientos_path
  end
end
