class TerminadosController < ApplicationController
  before_action :set_terminado, only: [:show, :edit, :update, :destroy]

  # GET /terminados
  # GET /terminados.json
  def index
    @terminados = Terminado.all
  end

  # GET /terminados/1
  # GET /terminados/1.json
  def show
  end

  # GET /terminados/new
  def new
    @terminado = Terminado.new
  end

  # GET /terminados/1/edit
  def edit
  end

  # POST /terminados
  # POST /terminados.json
  def create
    @terminado = Terminado.new(terminado_params)

    respond_to do |format|
      if @terminado.save
        format.html { redirect_to @terminado, notice: 'Terminado was successfully created.' }
        format.json { render :show, status: :created, location: @terminado }
      else
        format.html { render :new }
        format.json { render json: @terminado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /terminados/1
  # PATCH/PUT /terminados/1.json
  def update
    respond_to do |format|
      if @terminado.update(terminado_params)
        format.html { redirect_to @terminado, notice: 'Terminado was successfully updated.' }
        format.json { render :show, status: :ok, location: @terminado }
      else
        format.html { render :edit }
        format.json { render json: @terminado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /terminados/1
  # DELETE /terminados/1.json
  def destroy
    @terminado.destroy
    respond_to do |format|
      format.html { redirect_to terminados_url, notice: 'Terminado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_terminado
      @terminado = Terminado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def terminado_params
      params.require(:terminado).permit(:bordados, :estampado)
    end
end
