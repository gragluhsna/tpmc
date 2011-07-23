require 'test_helper'

class ProducerLotsControllerTest < ActionController::TestCase

  setup do
    @producer_lot = producer_lots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:producer_lots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create producer_lot" do
    assert_difference('ProducerLot.count') do
      post :create, :producer_lot => @producer_lot.attributes
    end

    assert_redirected_to producer_lot_path(assigns(:producer_lot))
  end

  test "should show producer_lot" do
    get :show, :id => @producer_lot.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @producer_lot.to_param
    assert_response :success
  end

  test "should update producer_lot" do
    put :update, :id => @producer_lot.to_param, :producer_lot => @producer_lot.attributes
    assert_redirected_to producer_lot_path(assigns(:producer_lot))
  end

  test "should destroy producer_lot" do
    assert_difference('ProducerLot.count', -1) do
      delete :destroy, :id => @producer_lot.to_param
    end

    assert_redirected_to producer_lots_path
  end
end
