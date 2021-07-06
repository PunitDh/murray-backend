# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Rails.env.development?
    products = 3.times.inject([]) do |memo|
        memo << { name: Faker::Commerce.product_name, price: (rand 10000)/100.0 }
    end

    ActiveRecord::Base.transaction do
        # Product.destroy_all
        Product.create! products
    end
end