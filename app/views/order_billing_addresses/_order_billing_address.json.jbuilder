json.extract! order_billing_address, :id, :order_id, :address_id, :created_at, :updated_at
json.url order_billing_address_url(order_billing_address, format: :json)
