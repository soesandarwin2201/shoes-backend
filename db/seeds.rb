# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

default_user = User.create!(name: 'test user1', email: 'testuser1@gmail.com', password: 'koko23052020')

default_shoe = default_user.shoes.create!(name: 'new shoes1', price: 3500, description: 'this is the new nike shoe', sale: false, categroy: 'woman shoe')

default_color = Color.create!(color: 'white', shoe: default_shoe)

default_image = Image.create!(url: 'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/e6da41fa-1be4-4ce5-b89c-22be4f1f02d4/air-force-1-07-mens-shoes-5QFp5Z.png', shoe: default_shoe)

default_size = Size.create!(size: '2xl', shoe: default_shoe)

