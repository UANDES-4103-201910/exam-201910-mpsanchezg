# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

product1 = Product.create(brand: 'brand1', model: 'model1', variant: 'black', price: '20000', short_description: 'short_desc_1', long_description: 'long_desc1')
product2 = Product.create(brand: 'brand1', model: 'model1', variant: 'blue', price: '20000', short_description: 'short_desc_2', long_description: 'long_desc2')
product3 = Product.create(brand: 'brand2', model: 'model2', variant: '', price: '20000', short_description: 'short_desc_3', long_description: 'long_desc3')
product4 = Product.create(brand: 'brand2', model: 'model3', variant: '', price: '20000', short_description: 'short_desc_4', long_description: 'long_desc4')
product5 = Product.create(brand: 'brand3', model: 'model4', variant: '', price: '20000', short_description: 'short_desc_5', long_description: 'long_desc5')

user1 = User.create(first_name: 'first_name1', last_name: 'last_name1', email: 'email1@example.com', password:'123123')
user2 = User.create(first_name: 'first_name2', last_name: 'last_name2', email: 'email2@example.com', password:'123123')
user3 = User.create(first_name: 'first_name3', last_name: 'last_name3', email: 'email3@example.com', password:'123123')
user4 = User.create(first_name: 'first_name4', last_name: 'last_name4', email: 'email4@example.com', password:'123123')

address1 = Address.create(phone: 123456, address_line_1: 'address line 1', address_line_2: 'address line 2',
                          city: 'city1', country: 'country1', zip_code: 12300, user: user1)
address2 = Address.create(phone: 123456, address_line_1: 'address line 1', address_line_2: 'address line 2',
                          city: 'city2', country: 'country2', zip_code: 12300, user: user2)
address3 = Address.create(phone: 123456, address_line_1: 'address line 1', address_line_2: 'address line 2',
                          city: 'city3', country: 'country3', zip_code: 12300, user: user3)
address4 = Address.create(phone: 123456, address_line_1: 'address line 1', address_line_2: 'address line 2',
                          city: 'city4', country: 'country4', zip_code: 12300, user: user4)
order1 = Order.create(user: user1)
order2 = Order.create(user: user2)
order3 = Order.create(user: user3)

order_products11 = OrderProduct.create(order: order1, product: product1)
order_products12 = OrderProduct.create(order: order1, product: product2)
order_products21 = OrderProduct.create(order: order2, product: product1)
order_products22 = OrderProduct.create(order: order2, product: product2)
order_products22 = OrderProduct.create(order: order2, product: product3)
order_products31 = OrderProduct.create(order: order3, product: product1)

order_shipping_address1  = OrderShippingAddress.create(order: order1, address: address1)
order_shipping_address2  = OrderShippingAddress.create(order: order2, address: address2)
order_shipping_address3  = OrderShippingAddress.create(order: order3, address: address3)

order_billing_address1  = OrderBillingAddress.create(order: order1, address: address4)
order_billing_address2  = OrderBillingAddress.create(order: order2, address: address4)
order_billing_address3  = OrderBillingAddress.create(order: order3, address: address4)