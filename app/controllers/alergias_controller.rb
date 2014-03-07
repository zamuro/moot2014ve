class AlergiasController < ApplicationController
    # GET /alergias
    # GET /alergias.json
    def index
      @alergias = Alergia.all
    end

    # GET /alergias/1
    # GET /alergias/1.json
    def show
    end

    # GET /alergias/new
    def new
      @alergia = Alergia.new
    end

    # GET /alergias/1/edit
    def edit
    end

    # POST /alergias
    # POST /alergias.json
    def create
      @alergia = Alergia.new(alergia_params)

      respond_to do |format|
        if @alergia.save
          format.html { redirect_to @alergia, notice: 'Datos usuario was successfully created.' }
          format.json { render action: 'show', status: :created, location: @alergia }
        else
          format.html { render action: 'new' }
          format.json { render json: @alergia.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /alergias/1
    # PATCH/PUT /alergias/1.json
    def update
      respond_to do |format|
        if @alergia.update(alergia_params)
          format.html { redirect_to @alergia, notice: 'Datos usuario was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: 'edit' }
          format.json { render json: @alergia.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /alergias/1
    # DELETE /alergias/1.json
    def destroy
      @alergia.destroy
      respond_to do |format|
        format.html { redirect_to alergias_url }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_alergia
        @alergia = Alergia.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def alergia_params
        params.require(:alergia).permit()
      end
  end
