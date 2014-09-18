class CarritoDeComprasController < ApplicationController
  before_action :set_carrito_de_compra, only: [:show, :edit, :update, :destroy]

  # GET /carrito_de_compras
  # GET /carrito_de_compras.json
  def index
    @carrito_de_compras = CarritoDeCompra.all
  end

  # GET /carrito_de_compras/1
  # GET /carrito_de_compras/1.json
  def show
  end

  # GET /carrito_de_compras/new
  def new
    @carrito_de_compra = CarritoDeCompra.new
  end

  # GET /carrito_de_compras/1/edit
  def edit
  end

  # POST /carrito_de_compras
  # POST /carrito_de_compras.json
  def create
    @carrito_de_compra = CarritoDeCompra.new(carrito_de_compra_params)

    respond_to do |format|
      if @carrito_de_compra.save
        format.html { redirect_to @carrito_de_compra, notice: 'Carrito de compra was successfully created.' }
        format.json { render :show, status: :created, location: @carrito_de_compra }
      else
        format.html { render :new }
        format.json { render json: @carrito_de_compra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carrito_de_compras/1
  # PATCH/PUT /carrito_de_compras/1.json
  def update
    respond_to do |format|
      if @carrito_de_compra.update(carrito_de_compra_params)
        format.html { redirect_to @carrito_de_compra, notice: 'Carrito de compra was successfully updated.' }
        format.json { render :show, status: :ok, location: @carrito_de_compra }
      else
        format.html { render :edit }
        format.json { render json: @carrito_de_compra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carrito_de_compras/1
  # DELETE /carrito_de_compras/1.json
  def destroy
    @carrito_de_compra.destroy
    respond_to do |format|
      format.html { redirect_to carrito_de_compras_url, notice: 'Carrito de compra was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carrito_de_compra
      @carrito_de_compra = CarritoDeCompra.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carrito_de_compra_params
      params.require(:carrito_de_compra).permit(:nombre_prodcuto, :codigo)
    end
end
