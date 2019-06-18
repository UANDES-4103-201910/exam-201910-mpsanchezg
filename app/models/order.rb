class Order < ApplicationRecord
  belongs_to :user
  has_one :order_billing_address
  has_one :order_shipping_address
end
