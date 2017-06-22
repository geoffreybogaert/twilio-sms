require 'test_helper'

class AulosControllerTest < ActionController::TestCase
  setup do
    @aulo = aulos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aulos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aulo" do
    assert_difference('Aulo.count') do
      post :create, aulo: { label: @aulo.label, start_at: @aulo.start_at }
    end

    assert_redirected_to aulo_path(assigns(:aulo))
  end

  test "should show aulo" do
    get :show, id: @aulo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aulo
    assert_response :success
  end

  test "should update aulo" do
    patch :update, id: @aulo, aulo: { label: @aulo.label, start_at: @aulo.start_at }
    assert_redirected_to aulo_path(assigns(:aulo))
  end

  test "should destroy aulo" do
    assert_difference('Aulo.count', -1) do
      delete :destroy, id: @aulo
    end

    assert_redirected_to aulos_path
  end
end
