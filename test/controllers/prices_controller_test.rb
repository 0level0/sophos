require 'test_helper'

class PricesControllerTest < ActionController::TestCase
  setup do
    @product_region = prices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ProductRegions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_region" do
    assert_difference('ProductRegion.count') do
      post :create, product_region: { product_region: @product_region.product_region }
    end

    assert_redirected_to price_path(assigns(:product_region))
  end

  test "should show product_region" do
    get :show, id: @product_region
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_region
    assert_response :success
  end

  test "should update product_region" do
    patch :update, id: @product_region, product_region: { product_region: @product_region.product_region }
    assert_redirected_to price_path(assigns(:product_region))
  end

  test "should destroy product_region" do
    assert_difference('ProductRegion.count', -1) do
      delete :destroy, id: @product_region
    end

    assert_redirected_to prices_path
  end
end
