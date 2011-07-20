require 'test_helper'

class ProductQualityPurchaseRatesControllerTest < ActionController::TestCase
  setup do
    @product_quality_purchase_rate = product_quality_purchase_rates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_quality_purchase_rates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_quality_purchase_rate" do
    assert_difference('ProductQualityPurchaseRate.count') do
      post :create, :product_quality_purchase_rate => @product_quality_purchase_rate.attributes
    end

    assert_redirected_to product_quality_purchase_rate_path(assigns(:product_quality_purchase_rate))
  end

  test "should show product_quality_purchase_rate" do
    get :show, :id => @product_quality_purchase_rate.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @product_quality_purchase_rate.to_param
    assert_response :success
  end

  test "should update product_quality_purchase_rate" do
    put :update, :id => @product_quality_purchase_rate.to_param, :product_quality_purchase_rate => @product_quality_purchase_rate.attributes
    assert_redirected_to product_quality_purchase_rate_path(assigns(:product_quality_purchase_rate))
  end

  test "should destroy product_quality_purchase_rate" do
    assert_difference('ProductQualityPurchaseRate.count', -1) do
      delete :destroy, :id => @product_quality_purchase_rate.to_param
    end

    assert_redirected_to product_quality_purchase_rates_path
  end
end
