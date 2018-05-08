# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user_list = [
    [ "Antonio", "Margarete", "Amargarete" , false],
    [ "Hans", "Landa", "Hlanda" , false],
    [ "Dominic", "Di Coco", "Ddicoco", false],
    [ "Admin", "Admin", "Admin", true]
]


user_list.each do |first_name, last_name, username, is_admin|
  User.create( first_name: first_name, last_name: last_name, username: username , is_admin:is_admin)

end

product_list = [
    [ "P1", 10, 100, 1],
    [ "P2", 11, 75, 2],
    [ "P3", 5, 150, 3],
    ["P4", 8, 110, 1],
]


product_list.each do |name, weight, price, user_id|
  Product.create( name: name, weight: weight, price: price ,user_id: user_id )

end