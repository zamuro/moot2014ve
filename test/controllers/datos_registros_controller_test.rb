require 'test_helper'

class DatosRegistrosControllerTest < ActionController::TestCase
  setup do
    @datos_registro = datos_registros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:datos_registros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create datos_registro" do
    assert_difference('DatosRegistro.count') do
      post :create, datos_registro: { ci: @datos_registro.ci, credencial: @datos_registro.credencial, distrito_id: @datos_registro.distrito_id, fechaNac: @datos_registro.fechaNac, grupo_id: @datos_registro.grupo_id, nivel_id: @datos_registro.nivel_id, nombre: @datos_registro.nombre, rama_id: @datos_registro.rama_id, region_id: @datos_registro.region_id, unidad_id: @datos_registro.unidad_id, usuario_id: @datos_registro.usuario_id }
    end

    assert_redirected_to datos_registro_path(assigns(:datos_registro))
  end

  test "should show datos_registro" do
    get :show, id: @datos_registro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @datos_registro
    assert_response :success
  end

  test "should update datos_registro" do
    patch :update, id: @datos_registro, datos_registro: { ci: @datos_registro.ci, credencial: @datos_registro.credencial, distrito_id: @datos_registro.distrito_id, fechaNac: @datos_registro.fechaNac, grupo_id: @datos_registro.grupo_id, nivel_id: @datos_registro.nivel_id, nombre: @datos_registro.nombre, rama_id: @datos_registro.rama_id, region_id: @datos_registro.region_id, unidad_id: @datos_registro.unidad_id, usuario_id: @datos_registro.usuario_id }
    assert_redirected_to datos_registro_path(assigns(:datos_registro))
  end

  test "should destroy datos_registro" do
    assert_difference('DatosRegistro.count', -1) do
      delete :destroy, id: @datos_registro
    end

    assert_redirected_to datos_registros_path
  end
end
