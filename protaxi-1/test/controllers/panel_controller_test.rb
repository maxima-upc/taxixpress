require 'test_helper'

class PanelControllerTest < ActionController::TestCase
  test "should get servicios" do
    get :servicios
    assert_response :success
  end

  test "should get usuarios" do
    get :usuarios
    assert_response :success
  end

  test "should get reportes" do
    get :reportes
    assert_response :success
  end

end
