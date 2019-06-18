require 'test_helper'

class OrderBillingAddressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order_billing_address = order_billing_addresses(:one)
  end

  test "should get index" do
    get order_billing_addresses_url
    assert_response :success
  end

  test "should get new" do
    get new_order_billing_address_url
    assert_response :success
  end

  test "should create order_billing_address" do
    assert_difference('OrderBillingAddress.count') do
      post order_billing_addresses_url, params: { order_billing_address: { address_id: @order_billing_address.address_id, order_id: @order_billing_address.order_id } }
    end

    assert_redirected_to order_billing_address_url(OrderBillingAddress.last)
  end

  test "should show order_billing_address" do
    get order_billing_address_url(@order_billing_address)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_billing_address_url(@order_billing_address)
    assert_response :success
  end

  test "should update order_billing_address" do
    patch order_billing_address_url(@order_billing_address), params: { order_billing_address: { address_id: @order_billing_address.address_id, order_id: @order_billing_address.order_id } }
    assert_redirected_to order_billing_address_url(@order_billing_address)
  end

  test "should destroy order_billing_address" do
    assert_difference('OrderBillingAddress.count', -1) do
      delete order_billing_address_url(@order_billing_address)
    end

    assert_redirected_to order_billing_addresses_url
  end
end
