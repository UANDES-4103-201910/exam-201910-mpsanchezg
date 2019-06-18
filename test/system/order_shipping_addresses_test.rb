require "application_system_test_case"

class OrderShippingAddressesTest < ApplicationSystemTestCase
  setup do
    @order_shipping_address = order_shipping_addresses(:one)
  end

  test "visiting the index" do
    visit order_shipping_addresses_url
    assert_selector "h1", text: "Order Shipping Addresses"
  end

  test "creating a Order shipping address" do
    visit order_shipping_addresses_url
    click_on "New Order Shipping Address"

    fill_in "Address", with: @order_shipping_address.address_id
    fill_in "Order", with: @order_shipping_address.order_id
    click_on "Create Order shipping address"

    assert_text "Order shipping address was successfully created"
    click_on "Back"
  end

  test "updating a Order shipping address" do
    visit order_shipping_addresses_url
    click_on "Edit", match: :first

    fill_in "Address", with: @order_shipping_address.address_id
    fill_in "Order", with: @order_shipping_address.order_id
    click_on "Update Order shipping address"

    assert_text "Order shipping address was successfully updated"
    click_on "Back"
  end

  test "destroying a Order shipping address" do
    visit order_shipping_addresses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order shipping address was successfully destroyed"
  end
end
