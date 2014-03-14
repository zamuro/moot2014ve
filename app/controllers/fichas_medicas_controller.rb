class FichasMedicasController < ApplicationController
  def index
  	@fichas_medica = FichasMedicas.all
  end

  def new
  	@fichas_medica = FichasMedica.new
  end

  def create
  	@fichas_medica = FichasMedica.new(fichas_medica_params)
    respond_to do |format|
      if @fichas_medica.save
        format.html { redirect_to new_alergy_path, notice: 'Creado tu registro de ficha médica' }
        
      else
        format.html { render action: 'new' }
        format.json { render json: @fichas_medica.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fichas_medica
      @fichas_medica = FichasMedica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fichas_medica_params
      params.require(:fichas_medica).permit(:usuario_id, :vacuna_id, :enfermedade_id, :alergia_id, :padecimiento_id, :tiposangre_id)
    end

end
