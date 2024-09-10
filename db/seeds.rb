puts "Elimindndo contactos..."
Contact.destroy_all

puts "Creando contactos..."
30.times do
  Contact.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone: Faker::PhoneNumber.cell_phone,
    birthday: Faker::Date.birthday(min_age: 18, max_age: 65)
  )
end
puts "Se han creado contactos..."
