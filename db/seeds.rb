# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



s1 = School.create(
    name: "Carleton University"
)

s2 = School.create(
    name: "University of Ottawa"
)

User.create!(
    first_name: "matt",
    last_name: "MB",
    password: "123",
    email: "matt@email.com",
) 

User.create!(
    first_name: "Iain",
    last_name: "M",
    password: "456",
    email: "email@email.com",
)


Course.create!(
    name: "Introduction to Computer Science I",
    code: "COMP 1405"
)

Course.create!(
    name: "Introduction to Computer Science II",
    code: "COMP 1406"
)

Course.create!(
    name: "Discrete Structures I",
    code: "COMP 1805"
)

Course.create!(
    name: "Introduction to Systems Programming",
    code: "COMP 2401"
)

Course.create!(
    name: "Abstract Data Types and Algorithms",
    code: "COMP 2402 "
)

5.times do
    random_user = User.create!(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        password: "123",
        email: Faker::Internet.email,
    ) 

    3.times do
        random_user.courses << Course.find_by(id: rand(1..5))  
    end

    random_user.schools << s1
end

5.times do
    random_user = User.create!(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        password: "123",
        email: Faker::Internet.email,
    ) 

    random_user.schools << s2
end

#in db


