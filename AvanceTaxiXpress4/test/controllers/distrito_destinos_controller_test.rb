require 'test_helper'

class DistritoDestinosControllerTest < ActionController::TestCase
  setup do
    @distrito_destino = distrito_destinos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:distrito_destinos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create distrito_destino" do
    assert_difference('DistritoDestino.count') do
      post :create, distrito_destino: { nombredistrito: @distrito_destino.nombredistrito }
    end

    assert_redirected_to distrito_destino_path(assigns(:distrito_destino))
  end

  test "should show distrito_destino" do
    get :show, id: @distrito_destino
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @distrito_destino
    assert_response :success
  end

  test "should update distrito_destino" do
    patch :update, id: @distrito_destino, distrito_destino: { nombredistrito: @distrito_destino.nombredistrito }
    assert_redirected_to distrito_destino_path(assigns(:distrito_destino))
  end

  test "should destroy distrito_destino" do
    assert_difference('DistritoDestino.count', -1) do
      delete :destroy, id: @distrito_destino
    end

    assert_redirected_to distrito_destinos_path
  end
end
