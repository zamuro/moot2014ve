class InicioController < ApplicationController
  def index
  end

  def consolidado
  	@registros = DatosRegistro.all
  	@fichas = FichasMedica.all
  	@datos_usuarios = DatosUsuario.all
  	@usuarios = Usuario.all
  	@pago = Pago.all
  end
end
