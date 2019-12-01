# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    

School.create(
    name: "Carleton University"
)

School.create(
    name: "University of Ottawa"
)

User.create(
    first_name: "matt",
    last_name: "MB",
    password: "123",
    email: "matt@email.com",
    school_id: 1
)


Course.create(
    name: "Introduction to Computer Science I",
    code: "COMP 1405"
)

Course.create(
    name: "Introduction to Computer Science II",
    code: "COMP 1406"
)

#in db


User.create(
    first_name: "Iain",
    last_name: "M",
    password: "123",
    email: "email@email.com",
    school_id: 1
)