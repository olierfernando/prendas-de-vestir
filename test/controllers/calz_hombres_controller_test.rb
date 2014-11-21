require 'test_helper'

class CalzHombresControllerTest < ActionController::TestCase
  setup do
    @calz_hombre = calz_hombres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:calz_hombres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create calz_hombre" do
    assert_difference('CalzHombre.count') do
      post :create, calz_hombre: { chamclas: @calz_hombre.chamclas, tenis: @calz_hombre.tenis, tenis_deport: @calz_hombre.tenis_deport, zapatos: @calz_hombre.zapatos }
    end

    assert_redirected_to calz_hombre_path(assigns(:calz_hombre))
  end

  test "should show calz_hombre" do
    get :show, id: @calz_hombre
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @calz_hombre
    assert_response :success
  end

  test "should update calz_hombre" do
    patch :update, id: @calz_hombre, calz_hombre: { chamclas: @calz_hombre.chamclas, tenis: @calz_hombre.tenis, tenis_deport: @calz_hombre.tenis_deport, zapatos: @calz_hombre.zapatos }
    assert_redirected_to calz_hombre_path(assigns(:calz_hombre))
  end

  test "should destroy calz_hombre" do
    assert_difference('CalzHombre.count', -1) do
      delete :destroy, id: @calz_hombre
    end

    assert_redirected_to calz_hombres_path
  end
end
