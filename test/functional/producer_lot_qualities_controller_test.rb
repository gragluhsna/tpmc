require 'test_helper'

class ProducerLotQualitiesControllerTest < ActionController::TestCase
  setup do
    @producer_lot_quality = producer_lot_qualities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:producer_lot_qualities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create producer_lot_quality" do
    assert_difference('ProducerLotQuality.count') do
      post :create, :producer_lot_quality => @producer_lot_quality.attributes
    end

    assert_redirected_to producer_lot_quality_path(assigns(:producer_lot_quality))
  end

  test "should show producer_lot_quality" do
    get :show, :id => @producer_lot_quality.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @producer_lot_quality.to_param
    assert_response :success
  end

  test "should update producer_lot_quality" do
    put :update, :id => @producer_lot_quality.to_param, :producer_lot_quality => @producer_lot_quality.attributes
    assert_redirected_to producer_lot_quality_path(assigns(:producer_lot_quality))
  end

  test "should destroy producer_lot_quality" do
    assert_difference('ProducerLotQuality.count', -1) do
      delete :destroy, :id => @producer_lot_quality.to_param
    end

    assert_redirected_to producer_lot_qualities_path
  end
end
