require 'test_helper'

class VacunasControllerTest < ActionController::TestCase
  setup do
    @vacuna = vacunas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vacunas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vacuna" do
    assert_difference('Vacuna.count') do
      post :create, vacuna: {  }
    end

    assert_redirected_to vacuna_path(assigns(:vacuna))
  end

  test "should show vacuna" do
    get :show, id: @vacuna
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vacuna
    assert_response :success
  end

  test "should update vacuna" do
    patch :update, id: @vacuna, vacuna: {  }
    assert_redirected_to vacuna_path(assigns(:vacuna))
  end

  test "should destroy vacuna" do
    assert_difference('Vacuna.count', -1) do
      delete :destroy, id: @vacuna
    end

    assert_redirected_to vacunas_path
  end
end
