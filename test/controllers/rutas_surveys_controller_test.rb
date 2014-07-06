require 'test_helper'

class RutasSurveysControllerTest < ActionController::TestCase
  setup do
    @rutas_survey = rutas_surveys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rutas_surveys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rutas_survey" do
    assert_difference('RutasSurvey.count') do
      post :create, rutas_survey: {  }
    end

    assert_redirected_to rutas_survey_path(assigns(:rutas_survey))
  end

  test "should show rutas_survey" do
    get :show, id: @rutas_survey
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rutas_survey
    assert_response :success
  end

  test "should update rutas_survey" do
    patch :update, id: @rutas_survey, rutas_survey: {  }
    assert_redirected_to rutas_survey_path(assigns(:rutas_survey))
  end

  test "should destroy rutas_survey" do
    assert_difference('RutasSurvey.count', -1) do
      delete :destroy, id: @rutas_survey
    end

    assert_redirected_to rutas_surveys_path
  end
end
