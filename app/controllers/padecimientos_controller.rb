class PadecimientosController < ApplicationController
  before_action :set_padecimiento, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_usuario!

  # GET /padecimientos
  # GET /padecimientos.json
  def index
    @padecimientos = Padecimiento.all
  end

  # GET /padecimientos/1
  # GET /padecimientos/1.json
  def show
  end

  # GET /padecimientos/new
  def new
    @padecimiento = Padecimiento.new
  end

  # GET /padecimientos/1/edit
  def edit
  end

  # POST /padecimientos
  # POST /padecimientos.json
  def create
    @padecimiento = Padecimiento.new(padecimiento_params)

    respond_to do |format|
      if @padecimiento.save
        format.html { redirect_to new_vacuna_path, notice: 'Padecimiento was successfully created.' }
        
      else
        format.html { render action: 'new' }
        format.json { render json: @padecimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /padecimientos/1
  # PATCH/PUT /padecimientos/1.json
  def update
    respond_to do |format|
      if @padecimiento.update(padecimiento_params)
        format.html { redirect_to @padecimiento, notice: 'Padecimiento was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @padecimiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /padecimientos/1
  # DELETE /padecimientos/1.json
  def destroy
    @padecimiento.destroy
    respond_to do |format|
      format.html { redirect_to padecimientos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_padecimiento
      @padecimiento = Padecimiento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def padecimiento_params
      params.fetch(:padecimiento).permit(:usuario_id, :lechina, :hepatitis, :rubeola, :apendicitis, :sarampion, :insomnio, :paperas, :sonambulismo, :estrenimiento, :acidez, :ulcera, :asma, :reflujo, :bulimia, :hiv, :otras)
    end
end
