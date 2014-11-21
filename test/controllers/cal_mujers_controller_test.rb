require 'test_helper'

class CalMujersControllerTest < ActionController::TestCase
  setup do
    @cal_mujer = cal_mujers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cal_mujers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cal_mujer" do
    assert_difference('CalMujer.count') do
      post :create, cal_mujer: { chamcletas: @cal_mujer.chamcletas, tacones: @cal_mujer.tacones, tenis: @cal_mujer.tenis, tenis_deport: @cal_mujer.tenis_deport }
    end

    assert_redirected_to cal_mujer_path(assigns(:cal_mujer))
  end

  test "should show cal_mujer" do
    get :show, id: @cal_mujer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cal_mujer
    assert_response :success
  end

  test "should update cal_mujer" do
    patch :update, id: @cal_mujer, cal_mujer: { chamcletas: @cal_mujer.chamcletas, tacones: @cal_mujer.tacones, tenis: @cal_mujer.tenis, tenis_deport: @cal_mujer.tenis_deport }
    assert_redirected_to cal_mujer_path(assigns(:cal_mujer))
  end

  test "should destroy cal_mujer" do
    assert_difference('CalMujer.count', -1) do
      delete :destroy, id: @cal_mujer
    end

    assert_redirected_to cal_mujers_path
  end
end
