json.extract! order_shipping_address, :id, :order_id, :address_id, :created_at, :updated_at
json.url order_shipping_address_url(order_shipping_address, format: :json)
