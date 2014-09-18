require 'test_helper'

class CarritoDeComprasControllerTest < ActionController::TestCase
  setup do
    @carrito_de_compra = carrito_de_compras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:carrito_de_compras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create carrito_de_compra" do
    assert_difference('CarritoDeCompra.count') do
      post :create, carrito_de_compra: { codigo: @carrito_de_compra.codigo, nombre_prodcuto: @carrito_de_compra.nombre_prodcuto }
    end

    assert_redirected_to carrito_de_compra_path(assigns(:carrito_de_compra))
  end

  test "should show carrito_de_compra" do
    get :show, id: @carrito_de_compra
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @carrito_de_compra
    assert_response :success
  end

  test "should update carrito_de_compra" do
    patch :update, id: @carrito_de_compra, carrito_de_compra: { codigo: @carrito_de_compra.codigo, nombre_prodcuto: @carrito_de_compra.nombre_prodcuto }
    assert_redirected_to carrito_de_compra_path(assigns(:carrito_de_compra))
  end

  test "should destroy carrito_de_compra" do
    assert_difference('CarritoDeCompra.count', -1) do
      delete :destroy, id: @carrito_de_compra
    end

    assert_redirected_to carrito_de_compras_path
  end
end
