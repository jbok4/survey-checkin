# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

doctors = Doctor.create([{ name: 'Zach Silverzweig', image: "https://cipherhealth.com/wp-content/uploads/2016/08/L_ZachSilverzweig-min.jpg" }, 
  { name: 'Alex Liu', image: "https://cipherhealth.com/wp-content/uploads/2016/08/AlexLiu-min.jpg" },
  { name: 'Alisha McWilliams', image: "https://cipherhealth.com/wp-content/uploads/2016/08/alishamcwilliams-min.jpg" },
  { name: 'Nick Cherry', image: "https://cipherhealth.com/wp-content/uploads/2016/08/NT9A7225-min.jpg" }
  ])

users = User.create(name: "Jaclyn Ciringione", email: "jciringione@gmail.com", phone: "516-428-1906", insurance_co: "Oxford", insurance_number: "000000000")