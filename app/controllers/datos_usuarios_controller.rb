class DatosUsuariosController < ApplicationController
  before_action :set_datos_usuario, only: [:show, :edit, :update, :destroy]
  #before_filter :authenticate_admin!
  before_filter :authenticate_usuario!

  # GET /datos_usuarios
  # GET /datos_usuarios.json
  def index
    @datos_usuarios = DatosUsuario.all
  end

  # GET /datos_usuarios/1
  # GET /datos_usuarios/1.json
  def show
  end

  # GET /datos_usuarios/new
  def new
    @datos_usuario = DatosUsuario.new
  end

  # GET /datos_usuarios/1/edit
  def edit
  end

  # POST /datos_usuarios
  # POST /datos_usuarios.json
  def create
    @datos_usuario = DatosUsuario.new(datos_usuario_params)

    respond_to do |format|
      if @datos_usuario.save
        format.html { redirect_to "/inicio/success", success: 'Datos usuario was successfully created.' }
        
      else
        format.html { render action: 'new' }
        format.json { render json: @datos_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /datos_usuarios/1
  # PATCH/PUT /datos_usuarios/1.json
  def update
    respond_to do |format|
      if @datos_usuario.update(datos_usuario_params)
        format.html { redirect_to root_path, notice: 'Datos usuario was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @datos_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /datos_usuarios/1
  # DELETE /datos_usuarios/1.json
  def destroy
    @datos_usuario.destroy
    respond_to do |format|
      format.html { redirect_to datos_usuarios_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_datos_usuario
      @datos_usuario = DatosUsuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def datos_usuario_params
      params.require(:datos_usuario).permit(:usuario_id, :tel1, :tel2, :correo, :direccion1, :direccion2, :contacto1, :contacto2, :tipo_sangre_id, :talla_id)
    end
end
