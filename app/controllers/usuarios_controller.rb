class UsuariosController < Devise::RegistrationsController
	def new
		@usuario = Usuario.new
	end

	def create
		@usuario = Usuario.new(usuario_params)
	   

	    respond_to do |format|
	      if @usuario.save

	        format.html { redirect_to new_datos_registro_path }

	        format.html { redirect_to new_datos_registro_path, notice: 'Cuenta creada. Ahora registra tus datos' }

	        
	      else
	        format.html { render action: 'new' }
	        format.json { render json: @datos_registro.errors, status: :unprocessable_entity }
	      end
	    end
	end

	private
	  # Use callbacks to share common setup or constraints between actions.
	  def set_usuario
	  end

	  # Never trust parameters from the scary internet, only allow the white list through.
	  def usuario_params
	    params.require(:usuario).permit(:id, :email, :password)
	  end
end