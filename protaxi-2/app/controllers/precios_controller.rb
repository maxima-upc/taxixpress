class PreciosController < ApplicationController
  # GET /precios
  # GET /precios.json
  def index
    @precios = Precio.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @precios }
    end
  end

  # GET /precios/1
  # GET /precios/1.json
  def show
    @precio = Precio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @precio }
    end
  end

  # GET /precios/new
  # GET /precios/new.json
  def new
    @precio = Precio.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @precio }
    end
  end

  # GET /precios/1/edit
  def edit
    @precio = Precio.find(params[:id])
  end

  # POST /precios
  # POST /precios.json
  def create
    @precio = Precio.new(params[:precio])

    respond_to do |format|
      if @precio.save
        format.html { redirect_to @precio, notice: 'Precio was successfully created.' }
        format.json { render json: @precio, status: :created, location: @precio }
      else
        format.html { render action: "new" }
        format.json { render json: @precio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /precios/1
  # PUT /precios/1.json
  def update
    @precio = Precio.find(params[:id])

    respond_to do |format|
      if @precio.update_attributes(params[:precio])
        format.html { redirect_to @precio, notice: 'Precio was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @precio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /precios/1
  # DELETE /precios/1.json
  def destroy
    @precio = Precio.find(params[:id])
    @precio.destroy

    respond_to do |format|
      format.html { redirect_to precios_url }
      format.json { head :no_content }
    end
  end
end
