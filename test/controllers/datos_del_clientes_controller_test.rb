require 'test_helper'

class DatosDelClientesControllerTest < ActionController::TestCase
  setup do
    @datos_del_cliente = datos_del_clientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:datos_del_clientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create datos_del_cliente" do
    assert_difference('DatosDelCliente.count') do
      post :create, datos_del_cliente: { apellido: @datos_del_cliente.apellido, cedula: @datos_del_cliente.cedula, ciudad: @datos_del_cliente.ciudad, direccion: @datos_del_cliente.direccion, email: @datos_del_cliente.email, forma_de_pago: @datos_del_cliente.forma_de_pago, nombre: @datos_del_cliente.nombre, telefono: @datos_del_cliente.telefono }
    end

    assert_redirected_to datos_del_cliente_path(assigns(:datos_del_cliente))
  end

  test "should show datos_del_cliente" do
    get :show, id: @datos_del_cliente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @datos_del_cliente
    assert_response :success
  end

  test "should update datos_del_cliente" do
    patch :update, id: @datos_del_cliente, datos_del_cliente: { apellido: @datos_del_cliente.apellido, cedula: @datos_del_cliente.cedula, ciudad: @datos_del_cliente.ciudad, direccion: @datos_del_cliente.direccion, email: @datos_del_cliente.email, forma_de_pago: @datos_del_cliente.forma_de_pago, nombre: @datos_del_cliente.nombre, telefono: @datos_del_cliente.telefono }
    assert_redirected_to datos_del_cliente_path(assigns(:datos_del_cliente))
  end

  test "should destroy datos_del_cliente" do
    assert_difference('DatosDelCliente.count', -1) do
      delete :destroy, id: @datos_del_cliente
    end

    assert_redirected_to datos_del_clientes_path
  end
end
