class DistritoOrigensController < ApplicationController
  before_action :set_distrito_origen, only: [:show, :edit, :update, :destroy]

  # GET /distrito_origens
  # GET /distrito_origens.json
  def index
    @distrito_origens = DistritoOrigen.all
  end

  # GET /distrito_origens/1
  # GET /distrito_origens/1.json
  def show
  end

  # GET /distrito_origens/new
  def new
    @distrito_origen = DistritoOrigen.new
  end

  # GET /distrito_origens/1/edit
  def edit
  end

  # POST /distrito_origens
  # POST /distrito_origens.json
  def create
    @distrito_origen = DistritoOrigen.new(distrito_origen_params)

    respond_to do |format|
      if @distrito_origen.save
        format.html { redirect_to @distrito_origen, notice: 'Distrito origen was successfully created.' }
        format.json { render :show, status: :created, location: @distrito_origen }
      else
        format.html { render :new }
        format.json { render json: @distrito_origen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /distrito_origens/1
  # PATCH/PUT /distrito_origens/1.json
  def update
    respond_to do |format|
      if @distrito_origen.update(distrito_origen_params)
        format.html { redirect_to @distrito_origen, notice: 'Distrito origen was successfully updated.' }
        format.json { render :show, status: :ok, location: @distrito_origen }
      else
        format.html { render :edit }
        format.json { render json: @distrito_origen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /distrito_origens/1
  # DELETE /distrito_origens/1.json
  def destroy
    @distrito_origen.destroy
    respond_to do |format|
      format.html { redirect_to distrito_origens_url, notice: 'Distrito origen was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_distrito_origen
      @distrito_origen = DistritoOrigen.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def distrito_origen_params
      params.require(:distrito_origen).permit(:nombredistrito)
    end
end
