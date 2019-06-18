require "application_system_test_case"

class OrderBillingAddressesTest < ApplicationSystemTestCase
  setup do
    @order_billing_address = order_billing_addresses(:one)
  end

  test "visiting the index" do
    visit order_billing_addresses_url
    assert_selector "h1", text: "Order Billing Addresses"
  end

  test "creating a Order billing address" do
    visit order_billing_addresses_url
    click_on "New Order Billing Address"

    fill_in "Address", with: @order_billing_address.address_id
    fill_in "Order", with: @order_billing_address.order_id
    click_on "Create Order billing address"

    assert_text "Order billing address was successfully created"
    click_on "Back"
  end

  test "updating a Order billing address" do
    visit order_billing_addresses_url
    click_on "Edit", match: :first

    fill_in "Address", with: @order_billing_address.address_id
    fill_in "Order", with: @order_billing_address.order_id
    click_on "Update Order billing address"

    assert_text "Order billing address was successfully updated"
    click_on "Back"
  end

  test "destroying a Order billing address" do
    visit order_billing_addresses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order billing address was successfully destroyed"
  end
end
