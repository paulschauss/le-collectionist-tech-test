# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

p 'Destroy database'
p 'Destroy all shops'
Shop.destroy_all

p 'Seeding database...'

p 'Creating shops...'
shop1 = Shop.create(name: 'Shop 1')
shop2 = Shop.create(name: 'Le Collectionist')
Shop.create(name: 'Shop 3')
Shop.create(name: 'Shop 4')
Shop.create(name: 'Shop 5')
p "Created #{Shop.count} shops"

p 'Creating slots...'
p 'Creating slots for shop 1...'
Slot.create(day: 'Monday', start_time: '9:00', end_time: '12:00', shop: shop1)
Slot.create(day: 'Monday', start_time: '14:00', end_time: '18:00', shop: shop1)
Slot.create(day: 'Tuesday', start_time: '9:00', end_time: '12:00', shop: shop1)
Slot.create(day: 'Tuesday', start_time: '14:00', end_time: '18:00', shop: shop1)
Slot.create(day: 'Wednesday', start_time: '9:00', end_time: '12:00', shop: shop1)
Slot.create(day: 'Wednesday', start_time: '14:00', end_time: '18:00', shop: shop1)
Slot.create(day: 'Thursday', start_time: '9:00', end_time: '12:00', shop: shop1)
Slot.create(day: 'Thursday', start_time: '14:00', end_time: '18:00', shop: shop1)
Slot.create(day: 'Friday', start_time: '9:00', end_time: '12:00', shop: shop1)
Slot.create(day: 'Friday', start_time: '14:00', end_time: '18:00', shop: shop1)
p "Created #{Slot.count} slots for Shop 1"

p 'Creating slots for shop 2...'
Slot.create(day: 'Wednesday', start_time: '10:30', end_time: '15:00', shop: shop2)
Slot.create(day: 'Wednesday', start_time: '17:00', end_time: '20:00', shop: shop2)
Slot.create(day: 'Thursday', start_time: '10:30', end_time: '15:00', shop: shop2)
Slot.create(day: 'Thursday', start_time: '17:00', end_time: '20:00', shop: shop2)
Slot.create(day: 'Friday', start_time: '10:30', end_time: '15:00', shop: shop2)
Slot.create(day: 'Friday', start_time: '17:00', end_time: '20:00', shop: shop2)
Slot.create(day: 'Saturday', start_time: '10:30', end_time: '20:00', shop: shop2)
Slot.create(day: 'Monday', start_time: '10:30', end_time: '15:00', shop: shop2)
Slot.create(day: 'Monday', start_time: '17:00', end_time: '20:00', shop: shop2)
Slot.create(day: 'Tuesday', start_time: '10:30', end_time: '15:00', shop: shop2)
Slot.create(day: 'Tuesday', start_time: '17:00', end_time: '20:00', shop: shop2)
p "Created #{Slot.count} slots for Shop 2"
