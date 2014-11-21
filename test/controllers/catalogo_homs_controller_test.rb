require 'test_helper'

class CatalogoHomsControllerTest < ActionController::TestCase
  setup do
    @catalogo_hom = catalogo_homs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:catalogo_homs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create catalogo_hom" do
    assert_difference('CatalogoHom.count') do
      post :create, catalogo_hom: { camisa: @catalogo_hom.camisa, camisilla: @catalogo_hom.camisilla, chaquetas: @catalogo_hom.chaquetas, jeans: @catalogo_hom.jeans, pantaloneta: @catalogo_hom.pantaloneta, tenis: @catalogo_hom.tenis }
    end

    assert_redirected_to catalogo_hom_path(assigns(:catalogo_hom))
  end

  test "should show catalogo_hom" do
    get :show, id: @catalogo_hom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @catalogo_hom
    assert_response :success
  end

  test "should update catalogo_hom" do
    patch :update, id: @catalogo_hom, catalogo_hom: { camisa: @catalogo_hom.camisa, camisilla: @catalogo_hom.camisilla, chaquetas: @catalogo_hom.chaquetas, jeans: @catalogo_hom.jeans, pantaloneta: @catalogo_hom.pantaloneta, tenis: @catalogo_hom.tenis }
    assert_redirected_to catalogo_hom_path(assigns(:catalogo_hom))
  end

  test "should destroy catalogo_hom" do
    assert_difference('CatalogoHom.count', -1) do
      delete :destroy, id: @catalogo_hom
    end

    assert_redirected_to catalogo_homs_path
  end
end
