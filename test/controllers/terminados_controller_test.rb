require 'test_helper'

class TerminadosControllerTest < ActionController::TestCase
  setup do
    @terminado = terminados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:terminados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create terminado" do
    assert_difference('Terminado.count') do
      post :create, terminado: { bordados: @terminado.bordados, estampado: @terminado.estampado }
    end

    assert_redirected_to terminado_path(assigns(:terminado))
  end

  test "should show terminado" do
    get :show, id: @terminado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @terminado
    assert_response :success
  end

  test "should update terminado" do
    patch :update, id: @terminado, terminado: { bordados: @terminado.bordados, estampado: @terminado.estampado }
    assert_redirected_to terminado_path(assigns(:terminado))
  end

  test "should destroy terminado" do
    assert_difference('Terminado.count', -1) do
      delete :destroy, id: @terminado
    end

    assert_redirected_to terminados_path
  end
end
