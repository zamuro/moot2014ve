require 'test_helper'

class AlergiaControllerTest < ActionController::TestCase
  setup do
    @alergium = alergia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alergia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alergium" do
    assert_difference('Alergium.count') do
      post :create, alergium: {  }
    end

    assert_redirected_to alergium_path(assigns(:alergium))
  end

  test "should show alergium" do
    get :show, id: @alergium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @alergium
    assert_response :success
  end

  test "should update alergium" do
    patch :update, id: @alergium, alergium: {  }
    assert_redirected_to alergium_path(assigns(:alergium))
  end

  test "should destroy alergium" do
    assert_difference('Alergium.count', -1) do
      delete :destroy, id: @alergium
    end

    assert_redirected_to alergia_path
  end
end
