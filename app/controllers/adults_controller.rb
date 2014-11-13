class AdultsController < ApplicationController
  def new
  	@adult = Adult.new
  end

  def index
  end

  def create
    @adult = Adult.new(adult_params)
    
    respond_to do |format|
      if @adult.save
        format.html { redirect_to "/inicio/success" }        
      else
        format.html { render action: 'new' }
        format.json { render json: @adult.errors, status: :unprocessable_entity }
      end
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adult
      @adult = Adult.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adult_params
      params.require(:adult).permit(:nombre, :ci, :fechaNac, :region_id, :distrito_id, :capacitacion_id, :area_id)
    end

end
