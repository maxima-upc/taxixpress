require 'test_helper'

class ServiciosControllerTest < ActionController::TestCase
  setup do
    @servicio = servicios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:servicios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create servicio" do
    assert_difference('Servicio.count') do
      post :create, servicio: { cliente_id: @servicio.cliente_id, direcciondestino: @servicio.direcciondestino, direccionorigen: @servicio.direccionorigen, fechaservicio: @servicio.fechaservicio, horaservicio: @servicio.horaservicio, pasajeros: @servicio.pasajeros, precio_id: @servicio.precio_id }
    end

    assert_redirected_to servicio_path(assigns(:servicio))
  end

  test "should show servicio" do
    get :show, id: @servicio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @servicio
    assert_response :success
  end

  test "should update servicio" do
    patch :update, id: @servicio, servicio: { cliente_id: @servicio.cliente_id, direcciondestino: @servicio.direcciondestino, direccionorigen: @servicio.direccionorigen, fechaservicio: @servicio.fechaservicio, horaservicio: @servicio.horaservicio, pasajeros: @servicio.pasajeros, precio_id: @servicio.precio_id }
    assert_redirected_to servicio_path(assigns(:servicio))
  end

  test "should destroy servicio" do
    assert_difference('Servicio.count', -1) do
      delete :destroy, id: @servicio
    end

    assert_redirected_to servicios_path
  end
end
