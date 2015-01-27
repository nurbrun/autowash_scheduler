require 'test_helper'

class AutoWashesControllerTest < ActionController::TestCase
  setup do
    @auto_wash = auto_washes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:auto_washes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create auto_wash" do
    assert_difference('AutoWash.count') do
      post :create, auto_wash: { close: @auto_wash.close, location: @auto_wash.location, start: @auto_wash.start }
    end

    assert_redirected_to auto_wash_path(assigns(:auto_wash))
  end

  test "should show auto_wash" do
    get :show, id: @auto_wash
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @auto_wash
    assert_response :success
  end

  test "should update auto_wash" do
    patch :update, id: @auto_wash, auto_wash: { close: @auto_wash.close, location: @auto_wash.location, start: @auto_wash.start }
    assert_redirected_to auto_wash_path(assigns(:auto_wash))
  end

  test "should destroy auto_wash" do
    assert_difference('AutoWash.count', -1) do
      delete :destroy, id: @auto_wash
    end

    assert_redirected_to auto_washes_path
  end
end
