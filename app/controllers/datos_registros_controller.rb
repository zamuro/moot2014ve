class DatosRegistrosController < ApplicationController
  before_action :set_datos_registro, only: [:show, :edit, :update, :destroy]

  # GET /datos_registros
  # GET /datos_registros.json
  def index
    @datos_registros = DatosRegistro.all
  end

  # GET /datos_registros/1
  # GET /datos_registros/1.json
  def show
  end

  # GET /datos_registros/new
  def new
    @datos_registro = DatosRegistro.new
  end

  # GET /datos_registros/1/edit
  def edit
  end

  # POST /datos_registros
  # POST /datos_registros.json
  def create
    @datos_registro = DatosRegistro.new(datos_registro_params)

    respond_to do |format|
      if @datos_registro.save
        format.html { redirect_to @datos_registro, notice: 'Datos registro was successfully created.' }
        format.json { render action: 'show', status: :created, location: @datos_registro }
      else
        format.html { render action: 'new' }
        format.json { render json: @datos_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /datos_registros/1
  # PATCH/PUT /datos_registros/1.json
  def update
    respond_to do |format|
      if @datos_registro.update(datos_registro_params)
        format.html { redirect_to @datos_registro, notice: 'Datos registro was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @datos_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /datos_registros/1
  # DELETE /datos_registros/1.json
  def destroy
    @datos_registro.destroy
    respond_to do |format|
      format.html { redirect_to datos_registros_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_datos_registro
      @datos_registro = DatosRegistro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def datos_registro_params
      params.require(:datos_registro).permit(:usuario_id, :nombre, :ci, :credencial, :fechaNac, :nivel_id, :region_id, :distrito_id, :grupo_id, :rama_id, :unidad_id)
    end
end
