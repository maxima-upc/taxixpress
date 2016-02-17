require 'test_helper'

class ConductorControllerTest < ActionController::TestCase
  test "should get chofer1" do
    get :chofer1
    assert_response :success
  end

end
