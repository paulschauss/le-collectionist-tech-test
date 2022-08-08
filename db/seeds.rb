
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
