
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

p "Destroy database"
p "Destroy all shops"
Shop.destroy_all

p "Seeding database..."

p "Creating shops..."
shop1 = Shop.create(name: "Shop 1")
shop2 = Shop.create(name: "Shop 2")
shop3 = Shop.create(name: "Shop 3")
shop4 = Shop.create(name: "Shop 4")
shop5 = Shop.create(name: "Shop 5")
p "Created #{Shop.count} shops"

p "Creating slots..."
p "Creating slots for shop 1..."
slot1 = Slot.create(day: "Monday", start_hour: 9, start_minute: 0, end_hour: 12, end_minute: 0, shop: shop1)
slot2 = Slot.create(day: "Monday", start_hour: 14, start_minute: 0, end_hour: 18, end_minute: 0, shop: shop1)
slot3 = Slot.create(day: "Tuesday", start_hour: 9, start_minute: 0, end_hour: 12, end_minute: 0, shop: shop1)
slot4 = Slot.create(day: "Tuesday", start_hour: 14, start_minute: 0, end_hour: 18, end_minute: 0, shop: shop1)
slot5 = Slot.create(day: "Wednesday", start_hour: 9, start_minute: 0, end_hour: 12, end_minute: 0, shop: shop1)
slot6 = Slot.create(day: "Wednesday", start_hour: 14, start_minute: 0, end_hour: 18, end_minute: 0, shop: shop1)
slot7 = Slot.create(day: "Thursday", start_hour: 9, start_minute: 0, end_hour: 12, end_minute: 0, shop: shop1)
slot8 = Slot.create(day: "Thursday", start_hour: 14, start_minute: 0, end_hour: 18, end_minute: 0, shop: shop1)
slot9 = Slot.create(day: "Friday", start_hour: 9, start_minute: 0, end_hour: 12, end_minute: 0, shop: shop1)
slot10 = Slot.create(day: "Friday", start_hour: 14, start_minute: 0, end_hour: 18, end_minute: 0, shop: shop1)
p "Created #{Slot.count} slots for Shop 1"
