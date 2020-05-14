# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Admin.create(username: "MikeStrahl", password: "TWHG3818")

# ContactMessage.create(
#     full_name: "Tyler Funk", 
#     email: "tyler.j.funk2@gmail.com", 
#     phone_number: "8168857739", 
#     address: "5686 Tabor St. Arvada, CO 80002", 
#     message: "My basement is flooding! Come help quick!!"
# )

# ContactMessage.create(
#     full_name: "Kate Strahl", 
#     email: "kate.strahl@gmail.com", 
#     phone_number: "8166688309", 
#     address: "12302 N Wayne Ave. Kansas City, MO 64165", 
#     message: "You aren't home yet mister! Hurry up!"
# )

# ContactMessage.create(
#     full_name: "Maddie Funk", 
#     email: "maddie.funk@gmail.com", 
#     phone_number: "8167160370", 
#     address: "2004 Lake Dr. Smithville, MO 64089", 
#     message: "We just bought a house, but it needs a new water heater!"
# )

Testimonial.create(
    name: "Tyler F.", 
    message: "He left my unfinished basement cleaner than when he came in!"
)

Testimonial.create(
    name: "Kate S.", 
    message: "Mike is my hero!"
)

Testimonial.create(
    name: "Maddie F.", 
    message: "Super clean work, love his work ethic, and pricing"
)