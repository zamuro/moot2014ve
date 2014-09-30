class RutasSurveysController < ApplicationController
  before_action :set_rutas_survey, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_usuario!

  # GET /rutas_surveys
  # GET /rutas_surveys.json
  def index
    @rutas_surveys = RutasSurvey.all
  end

  # GET /rutas_surveys/1
  # GET /rutas_surveys/1.json
  def show
  end

  # GET /rutas_surveys/new
  def new
    @rutas_survey = RutasSurvey.new
  end

  # GET /rutas_surveys/1/edit
  def edit
  end

  # POST /rutas_surveys
  # POST /rutas_surveys.json
  def create
    @rutas_survey = RutasSurvey.new(rutas_survey_params)

    respond_to do |format|
      if @rutas_survey.save
        format.html { redirect_to root_path, notice: 'Rutas survey was successfully created.' }
        format.json { render action: 'show', status: :created, location: @rutas_survey }
      else
        format.html { render action: 'new' }
        format.json { render json: @rutas_survey.errors, status: :unprocessable_entity }
      end
    end
  end
  

  # PATCH/PUT /rutas_surveys/1
  # PATCH/PUT /rutas_surveys/1.json
  def update
    respond_to do |format|
      if @rutas_survey.update(rutas_survey_params)
        format.html { redirect_to @rutas_survey, notice: 'Rutas survey was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @rutas_survey.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rutas_surveys/1
  # DELETE /rutas_surveys/1.json
  def destroy
    @rutas_survey.destroy
    respond_to do |format|
      format.html { redirect_to rutas_surveys_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rutas_survey
      @rutas_survey = RutasSurvey.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rutas_survey_params
      params.require(:rutas_survey).permit(:usuario_id, :ruta1, :ruta2, :ruta3)
    end
end
