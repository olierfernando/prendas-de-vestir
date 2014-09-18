class DatosDelClientesController < ApplicationController
  before_action :set_datos_del_cliente, only: [:show, :edit, :update, :destroy]

  # GET /datos_del_clientes
  # GET /datos_del_clientes.json
  def index
    @datos_del_clientes = DatosDelCliente.all
  end

  # GET /datos_del_clientes/1
  # GET /datos_del_clientes/1.json
  def show
  end

  # GET /datos_del_clientes/new
  def new
    @datos_del_cliente = DatosDelCliente.new
  end

  # GET /datos_del_clientes/1/edit
  def edit
  end

  # POST /datos_del_clientes
  # POST /datos_del_clientes.json
  def create
    @datos_del_cliente = DatosDelCliente.new(datos_del_cliente_params)

    respond_to do |format|
      if @datos_del_cliente.save
        format.html { redirect_to @datos_del_cliente, notice: 'Datos del cliente was successfully created.' }
        format.json { render :show, status: :created, location: @datos_del_cliente }
      else
        format.html { render :new }
        format.json { render json: @datos_del_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /datos_del_clientes/1
  # PATCH/PUT /datos_del_clientes/1.json
  def update
    respond_to do |format|
      if @datos_del_cliente.update(datos_del_cliente_params)
        format.html { redirect_to @datos_del_cliente, notice: 'Datos del cliente was successfully updated.' }
        format.json { render :show, status: :ok, location: @datos_del_cliente }
      else
        format.html { render :edit }
        format.json { render json: @datos_del_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /datos_del_clientes/1
  # DELETE /datos_del_clientes/1.json
  def destroy
    @datos_del_cliente.destroy
    respond_to do |format|
      format.html { redirect_to datos_del_clientes_url, notice: 'Datos del cliente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_datos_del_cliente
      @datos_del_cliente = DatosDelCliente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def datos_del_cliente_params
      params.require(:datos_del_cliente).permit(:nombre, :cedula, :apellido, :telefono, :direccion, :email, :ciudad, :forma_de_pago)
    end
end
