require 'test_helper'

class ProducerLotDetailsControllerTest < ActionController::TestCase
  setup do
    @producer_lot_detail = producer_lot_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:producer_lot_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create producer_lot_detail" do
    assert_difference('ProducerLotDetail.count') do
      post :create, :producer_lot_detail => @producer_lot_detail.attributes
    end

    assert_redirected_to producer_lot_detail_path(assigns(:producer_lot_detail))
  end

  test "should show producer_lot_detail" do
    get :show, :id => @producer_lot_detail.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @producer_lot_detail.to_param
    assert_response :success
  end

  test "should update producer_lot_detail" do
    put :update, :id => @producer_lot_detail.to_param, :producer_lot_detail => @producer_lot_detail.attributes
    assert_redirected_to producer_lot_detail_path(assigns(:producer_lot_detail))
  end

  test "should destroy producer_lot_detail" do
    assert_difference('ProducerLotDetail.count', -1) do
      delete :destroy, :id => @producer_lot_detail.to_param
    end

    assert_redirected_to producer_lot_details_path
  end
end
