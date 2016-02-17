class DistritoDestinosController < ApplicationController
  before_action :set_distrito_destino, only: [:show, :edit, :update, :destroy]

  # GET /distrito_destinos
  # GET /distrito_destinos.json
  def index
    @distrito_destinos = DistritoDestino.all
  end

  # GET /distrito_destinos/1
  # GET /distrito_destinos/1.json
  def show
  end

  # GET /distrito_destinos/new
  def new
    @distrito_destino = DistritoDestino.new
  end

  # GET /distrito_destinos/1/edit
  def edit
  end

  # POST /distrito_destinos
  # POST /distrito_destinos.json
  def create
    @distrito_destino = DistritoDestino.new(distrito_destino_params)

    respond_to do |format|
      if @distrito_destino.save
        format.html { redirect_to @distrito_destino, notice: 'Distrito destino was successfully created.' }
        format.json { render :show, status: :created, location: @distrito_destino }
      else
        format.html { render :new }
        format.json { render json: @distrito_destino.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /distrito_destinos/1
  # PATCH/PUT /distrito_destinos/1.json
  def update
    respond_to do |format|
      if @distrito_destino.update(distrito_destino_params)
        format.html { redirect_to @distrito_destino, notice: 'Distrito destino was successfully updated.' }
        format.json { render :show, status: :ok, location: @distrito_destino }
      else
        format.html { render :edit }
        format.json { render json: @distrito_destino.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /distrito_destinos/1
  # DELETE /distrito_destinos/1.json
  def destroy
    @distrito_destino.destroy
    respond_to do |format|
      format.html { redirect_to distrito_destinos_url, notice: 'Distrito destino was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_distrito_destino
      @distrito_destino = DistritoDestino.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def distrito_destino_params
      params.require(:distrito_destino).permit(:nombredistrito)
    end
end
