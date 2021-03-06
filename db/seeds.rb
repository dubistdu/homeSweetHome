# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
homes = Home.create!([
  {
    address: '1234 Sesame Street, New York, NY, 12345',
    description: 'Built in 1995. Recently updated kitchen and bathrooms. Cul-de-sac. Great school. Perfect location for a family with little kids',
    number_of_bedrooms: 4,
    number_of_bathrooms: 3,
    square_foot: 1925,
    price: 250_000,
    swimming_pool: false,
    parking_garage: true,
    parking_garage_type: 'attached',
    parking_garage_size: '200',
    images: File.open(Rails.root.join("db/seed/images/home1.png"))
  },
  {
    address: '2222 Pepper Street, New York, NY, 12345',
    description: 'Built in 1995. Recently updated kitchen and bathrooms. Cul-de-sac. Great school. Perfect location for a family with little kids',
    number_of_bedrooms: 4,
    number_of_bathrooms: 3,
    square_foot: 1925,
    price: 220_000,
    swimming_pool: true,
    parking_garage: false,
    parking_garage_type: "",
    parking_garage_size: "",
    images: File.open(Rails.root.join("db/seed/images/home2.png"))
  } ,
  {
    address: '500 Sesame Street, New York, NY, 12345',
    description: 'Built in 1995. Recently updated kitchen and bathrooms. Cul-de-sac. Great school. Perfect location for a family with little kids',
    number_of_bedrooms: 5,
    number_of_bathrooms: 2.5,
    square_foot: 2200,
    price: 300_000,
    swimming_pool: true,
    parking_garage: true,
    parking_garage_type: 'Carport',
    parking_garage_size: '159',
    images: File.open(Rails.root.join("db/seed/images/home3.png"))
  } ,
  {
    address: '123 1st Street, Savannah, GA, 12345',
    description: 'Close to downtown and restaurants. Central location',
    number_of_bedrooms: 4,
    number_of_bathrooms: 3,
    square_foot: 2400,
    price: 420_000,
    swimming_pool: false,
    parking_garage: true,
    parking_garage_type: 'Attached',
    parking_garage_size: '2 car garage',
    images: File.open(Rails.root.join("db/seed/images/home4.jpg"))
  }
])
