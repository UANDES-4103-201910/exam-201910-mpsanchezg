class CreateOrderBillingAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :order_billing_addresses do |t|
      t.references :order, foreign_key: true
      t.references :address, foreign_key: true

      t.timestamps
    end
  end
end
