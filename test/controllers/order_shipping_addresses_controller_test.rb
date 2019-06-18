require 'test_helper'

class OrderShippingAddressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order_shipping_address = order_shipping_addresses(:one)
  end

  test "should get index" do
    get order_shipping_addresses_url
    assert_response :success
  end

  test "should get new" do
    get new_order_shipping_address_url
    assert_response :success
  end

  test "should create order_shipping_address" do
    assert_difference('OrderShippingAddress.count') do
      post order_shipping_addresses_url, params: { order_shipping_address: { address_id: @order_shipping_address.address_id, order_id: @order_shipping_address.order_id } }
    end

    assert_redirected_to order_shipping_address_url(OrderShippingAddress.last)
  end

  test "should show order_shipping_address" do
    get order_shipping_address_url(@order_shipping_address)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_shipping_address_url(@order_shipping_address)
    assert_response :success
  end

  test "should update order_shipping_address" do
    patch order_shipping_address_url(@order_shipping_address), params: { order_shipping_address: { address_id: @order_shipping_address.address_id, order_id: @order_shipping_address.order_id } }
    assert_redirected_to order_shipping_address_url(@order_shipping_address)
  end

  test "should destroy order_shipping_address" do
    assert_difference('OrderShippingAddress.count', -1) do
      delete order_shipping_address_url(@order_shipping_address)
    end

    assert_redirected_to order_shipping_addresses_url
  end
end
