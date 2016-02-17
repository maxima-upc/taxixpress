require 'test_helper'

class DistritoOrigensControllerTest < ActionController::TestCase
  setup do
    @distrito_origen = distrito_origens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:distrito_origens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create distrito_origen" do
    assert_difference('DistritoOrigen.count') do
      post :create, distrito_origen: { nombredistrito: @distrito_origen.nombredistrito }
    end

    assert_redirected_to distrito_origen_path(assigns(:distrito_origen))
  end

  test "should show distrito_origen" do
    get :show, id: @distrito_origen
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @distrito_origen
    assert_response :success
  end

  test "should update distrito_origen" do
    patch :update, id: @distrito_origen, distrito_origen: { nombredistrito: @distrito_origen.nombredistrito }
    assert_redirected_to distrito_origen_path(assigns(:distrito_origen))
  end

  test "should destroy distrito_origen" do
    assert_difference('DistritoOrigen.count', -1) do
      delete :destroy, id: @distrito_origen
    end

    assert_redirected_to distrito_origens_path
  end
end
