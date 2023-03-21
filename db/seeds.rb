require 'faker'

puts "🍕 Seeding pizza ...."

5.times do
    restaurant_name = Faker::Restaurant.name
    restaurant_addy = "#{Faker::Address.building_number
    } #{Faker::Address.street_address}, #{Faker::Address.street_name
    }" 
    
    pizza_name = Faker::Food.dish
    pizza_ingredients = []
    3.times do
        pizza_ingredients << Faker::Food.ingredient
    end

    Restaurant.create(name: restaurant_name, address: restaurant_addy)
    Pizza.create(name: pizza_name, ingredients: pizza_ingredients.join(","))
end

puts "✅ Done seeding."


