require 'test_helper'

class EnfermedadesControllerTest < ActionController::TestCase
  setup do
    @enfermedade = enfermedades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:enfermedades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create enfermedade" do
    assert_difference('Enfermedade.count') do
      post :create, enfermedade: {  }
    end

    assert_redirected_to enfermedade_path(assigns(:enfermedade))
  end

  test "should show enfermedade" do
    get :show, id: @enfermedade
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @enfermedade
    assert_response :success
  end

  test "should update enfermedade" do
    patch :update, id: @enfermedade, enfermedade: {  }
    assert_redirected_to enfermedade_path(assigns(:enfermedade))
  end

  test "should destroy enfermedade" do
    assert_difference('Enfermedade.count', -1) do
      delete :destroy, id: @enfermedade
    end

    assert_redirected_to enfermedades_path
  end
end
