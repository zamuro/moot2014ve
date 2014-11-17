class PagosController < ApplicationController
  before_action :set_pago, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_usuario!
  before_action :set_locale
 
def set_locale
  I18n.locale = params[:locale] || I18n.default_locale
end

  # GET /pagos
  # GET /pagos.json
  def index
    @pagos = Pago.all
    @banco = Banco.all
    @registro = DatosRegistro.all

    respond_to do |format|
      format.html
      format.csv do
        headers['Content-Disposition'] = "attachment; filename=\"pagos-#{DateTime.current}\""
        headers['Content-Type'] ||= 'text/csv'
      end
    end
  end

  def penalidades
    @pagos = Pago.where("created_at > ?", Date.parse("2014-11-01"))
  end

  # GET /pagos/1
  # GET /pagos/1.json
  def show
    @usuario = Usuario.find(params[:id])
    @pago = Pago.find(params[:id])
    @id = @pago.usuario_id
    if current_usuario.id == @usuario.id
      @fetch = Pago.where(:usuario_id => current_usuario.id)
      @total = Pago.where(:usuario_id => current_usuario.id).sum(:monto)
    elsif current_usuario.admin?
      @fetch = Pago.where("usuario_id = ?", @id)
      @total = Pago.where("usuario_id = ?", @id).sum(:monto)
    end
    @registro = DatosRegistro.find(params[:id])

  end

  def estado_cuenta
    @pago = Pago.find(params[:id])
  end

  # GET /pagos/new
  def new
    @pago = Pago.new
    
  end

  # GET /pagos/1/edit
  def edit
    authorize! :edit, Pago
  end

  # POST /pagos
  # POST /pagos.json
  def create
    @pago = Pago.new(pago_params)

    respond_to do |format|
      if @pago.save
        format.html { redirect_to "/inicio/success", notice: 'Pago was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pago }
      else
        format.html { render action: 'new' }
        format.json { render json: @pago.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pagos/1
  # PATCH/PUT /pagos/1.json
  def update
    respond_to do |format|
      if @pago.update(pago_params)
        format.html { redirect_to @pago, notice: 'Pago was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pago.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pagos/1
  # DELETE /pagos/1.json
  def destroy
    @pago.destroy
    respond_to do |format|
      format.html { redirect_to pagos_url }
      format.json { head :no_content }
    end
  end

  def datos_registro
    datos_registro = DatosRegistro.find(params[:usuario_id])
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pago
      @pago = Pago.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pago_params
      params.require(:pago).permit(:usuario_id, :voucher, :monto, :fecha, :banco_id, :datos_registro_id)
    end
end
