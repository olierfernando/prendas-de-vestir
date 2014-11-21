class CatalogoHomsController < ApplicationController
  before_action :set_catalogo_hom, only: [:show, :edit, :update, :destroy]

  # GET /catalogo_homs
  # GET /catalogo_homs.json
  def index
    @catalogo_homs = CatalogoHom.all
  end

  # GET /catalogo_homs/1
  # GET /catalogo_homs/1.json
  def show
  end

  # GET /catalogo_homs/new
  def new
    @catalogo_hom = CatalogoHom.new
  end

  # GET /catalogo_homs/1/edit
  def edit
  end

  # POST /catalogo_homs
  # POST /catalogo_homs.json
  def create
    @catalogo_hom = CatalogoHom.new(catalogo_hom_params)

    respond_to do |format|
      if @catalogo_hom.save
        format.html { redirect_to @catalogo_hom, notice: 'Catalogo hom was successfully created.' }
        format.json { render :show, status: :created, location: @catalogo_hom }
      else
        format.html { render :new }
        format.json { render json: @catalogo_hom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /catalogo_homs/1
  # PATCH/PUT /catalogo_homs/1.json
  def update
    respond_to do |format|
      if @catalogo_hom.update(catalogo_hom_params)
        format.html { redirect_to @catalogo_hom, notice: 'Catalogo hom was successfully updated.' }
        format.json { render :show, status: :ok, location: @catalogo_hom }
      else
        format.html { render :edit }
        format.json { render json: @catalogo_hom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catalogo_homs/1
  # DELETE /catalogo_homs/1.json
  def destroy
    @catalogo_hom.destroy
    respond_to do |format|
      format.html { redirect_to catalogo_homs_url, notice: 'Catalogo hom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catalogo_hom
      @catalogo_hom = CatalogoHom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catalogo_hom_params
      params.require(:catalogo_hom).permit(:jeans, :camisa, :chaquetas, :tenis, :camisilla, :pantaloneta)
    end
end
