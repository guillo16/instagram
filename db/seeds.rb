# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts 'creating user'

User.create(email: "gui@hotmail.com",
 password: 123456,
 remote_photo_url: "https://images.unsplash.com/photo-1524593689594-aae2f26b75ab?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=80", nickname: "juan_12")
User.create(email: "guo@hotmail.com",
 password: 123456,
 remote_photo_url: "https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1100&q=80",
 nickname: "juan_13")
User.create(email: "guu@hotmail.com",
 password: 123456,
 remote_photo_url: "https://res.cloudinary.com/dw7ox75dg/image/upload/v1559309793/photo-1525450280520-7d542a86e065.jpg",
 nickname: "juan_11")
puts 'finish user'

Post.create(user_id: 2, remote_photo_url: "https://images.unsplash.com/photo-1529680459049-bf0340fa0755?ixlib=rb-1.2.1&auto=format&fit=crop&w=1268&q=80", title: "the best")
Post.create(user_id: 2,
 remote_photo_url: "https://images.unsplash.com/photo-1529680459049-bf0340fa0755?ixlib=rb-1.2.1&auto=format&fit=crop&w=1268&q=80",
 title: "the best")
Post.create(user_id: 3,
 remote_photo_url: "https://images.unsplash.com/photo-1480714378408-67cf0d13bc1b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=60",
 title: "New york")
Post.create(user_id: 4,
 remote_photo_url: "https://images.unsplash.com/photo-1470219556762-1771e7f9427d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1489&q=80" ,
 title: "Manhattan")
Post.create(user_id: 5,
 remote_photo_url: "https://images.unsplash.com/photo-1527956041665-d7a1b380c460?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1268&q=80" ,
 title: "City of dreams")
Post.create(user_id: 2,
 remote_photo_url: "https://images.unsplash.com/photo-1527362385507-e99d6bf2a2a1?ixlib=rb-1.2.1&auto=format&fit=crop&w=1352&q=80",
 title: "guillo")
Post.create(user_id: 2,
 remote_photo_url: "https://images.unsplash.com/photo-1548199973-03cce0bbc87b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80",
 title: "Dogs")
# Post.create(user_id: ,
#  remote_photo_url: ,
#   title: "")
puts "finishing"
