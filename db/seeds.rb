# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
regular_user1 = User.create(username: 'Lokesh', email: 'lokeshkumarchaman@gmail.com', password: 'password')
regular_user2 = User.create(username: 'Jabra Ram', email: 'jrchoudhary2410@gmail.com', password: 'password')
regular_user3 = User.create(username: 'Mahfuz', email: 'mahfuzflamedestiny@gmail.com', password: 'password')
admin = User.create(username: 'Admin', email: 'admin@gmail.com', password: 'password', admin: true)

category1 = Category.create(name: 'Real Estate')
category2 = Category.create(name: 'Cars')
category3 = Category.create(name: 'Electronics')
category4 = Category.create(name: 'Furniture')
category5 = Category.create(name: 'Books')
category6 = Category.create(name: 'Services')
# rubocop:disable Layout/LineLength
item1 = Item.create(title: 'Arduino', description: 'Brand new arduino for sell ', username: 'Lokesh', phone: '8756657656',
                    city: 'Kolkata', category_id: category3.id, approved: true, user_id: regular_user1.id, approved_by_id: admin.id)
image_paths = ['arduino_1.jpg', 'arduino_2.jpg']
image_paths.each do |image_path|
  path = Rails.root.join('app', 'assets', 'images', image_path)
  item1.images.attach(io: File.open(path), filename: image_path)
end

item2 = Item.create(title: 'Audi A4', description: 'Audi A4 2018 model 4 months used', username: 'Jabra Ram',
                    phone: '8756657656', city: 'Kolkata', category_id: category2.id, approved: true, user_id: regular_user2.id, approved_by_id: admin.id)
image_paths = ['audi_a4_1.jpg', 'audi_a4_2.jpg', 'audi_a4_3.jpg']
image_paths.each do |image_path|
  path = Rails.root.join('app', 'assets', 'images', image_path)
  item2.images.attach(io: File.open(path), filename: image_path)
end

item3 = Item.create(title: ' Physocology of Money', description: 'Book for youngsters to be financially independent',
                    username: 'Mahfuz Alam', phone: '8756657656', city: 'Jaipur', category_id: category5.id, approved: true, user_id: regular_user3.id, approved_by_id: admin.id)
image_paths = ['book_1.jpg', 'book_2.jpg']
image_paths.each do |image_path|
  path = Rails.root.join('app', 'assets', 'images', image_path)
  item3.images.attach(io: File.open(path), filename: image_path)
end

item4 = Item.create(title: ' 4BHK Villa', description: 'Best for joint family', username: 'Lokesh', phone: '8756657656',
                    city: 'Jaipur', category_id: category1.id, approved: true, user_id: regular_user1.id, approved_by_id: admin.id)
image_paths = ['real-estate1.jpg', 'real-estate3.jpg']
image_paths.each do |image_path|
  path = Rails.root.join('app', 'assets', 'images', image_path)
  item4.images.attach(io: File.open(path), filename: image_path)
end

item5 = Item.create(title: ' Sofa', description: 'Comfortable and relaxing', username: 'Jabra Ram', phone: '8756657656',
                    city: 'Kolkata', category_id: category4.id, approved: true, user_id: regular_user2.id, approved_by_id: admin.id)
image_paths = ['sofa_1.jpg', 'sofa_2.jpg', 'sofa_3.jpg']
image_paths.each do |image_path|
  path = Rails.root.join('app', 'assets', 'images', image_path)
  item5.images.attach(io: File.open(path), filename: image_path)
end

item6 = Item.create(title: 'Hondacity', description: 'Contact us for Serivces', username: 'Jabra Ram', phone: '8756657656',
                    city: 'Kolkata', category_id: category6.id, approved: true, user_id: regular_user2.id, approved_by_id: admin.id)
image_paths = ['hondacity.jpg', 'hondacity2.jpg']
image_paths.each do |image_path|
  path = Rails.root.join('app', 'assets', 'images', image_path)
  item6.images.attach(io: File.open(path), filename: image_path)
end

item7 = Item.create(title: 'Chair', description: 'Comfortable for Tourist', username: 'Jabra Ram', phone: '8756657656',
                    city: 'Jaipur', category_id: category4.id, approved: true, user_id: regular_user2.id, approved_by_id: admin.id)
image_paths = ['chair.jpg', 'chair2.jpg']
image_paths.each do |image_path|
  path = Rails.root.join('app', 'assets', 'images', image_path)
  item7.images.attach(io: File.open(path), filename: image_path)
end

item8 = Item.create(title: 'King Bed', description: 'Best for 3 people', username: 'Jabra Ram', phone: '8756657656',
                    city: 'Kolkata', category_id: category4.id, approved: true, user_id: regular_user2.id, approved_by_id: admin.id)
image_paths = ['bed.jpg', 'bed2.jpg']
image_paths.each do |image_path|
  path = Rails.root.join('app', 'assets', 'images', image_path)
  item8.images.attach(io: File.open(path), filename: image_path)
end

item9 = Item.create(title: 'Fan', description: 'Partner of Summer, cool and relax', username: 'Lokesh', phone: '8756657656',
                    city: 'Kolkata', category_id: category3.id, approved: false, user_id: regular_user1.id)
image_paths = ['fan1.jpg', 'fan2.jpg']
image_paths.each do |image_path|
  path = Rails.root.join('app', 'assets', 'images', image_path)
  item9.images.attach(io: File.open(path), filename: image_path)
end

item10 = Item.create(title: 'Redmi 10 Pro', description: 'Best one under 20K', username: 'Jabra Ram', phone: '8756657656',
                     city: 'Kolkata', category_id: category3.id, approved: false, user_id: regular_user2.id)
image_paths = ['mobile.jpg', 'mobile2.jpg']
image_paths.each do |image_path|
  path = Rails.root.join('app', 'assets', 'images', image_path)
  item10.images.attach(io: File.open(path), filename: image_path)
end

item11 = Item.create(title: 'Bag Repairing', description: 'Best repairer of Bag', username: 'Lokesh', phone: '8756657656',
                     city: 'Jaipur', category_id: category6.id, approved: true, user_id: regular_user1.id, approved_by_id: admin.id)
image_paths = ['bag.jpeg', 'bag2.jpeg']
image_paths.each do |image_path|
  path = Rails.root.join('app', 'assets', 'images', image_path)
  item11.images.attach(io: File.open(path), filename: image_path)
end

item12 = Item.create(title: 'Charger', description: 'Type C charger 33W', username: 'Lokesh', phone: '8756657656',
                     city: 'Jaipur', category_id: category3.id, approved: true, user_id: regular_user1.id, approved_by_id: admin.id)
image_paths = ['charger.jpeg', 'charger2.jpeg']
image_paths.each do |image_path|
  path = Rails.root.join('app', 'assets', 'images', image_path)
  item12.images.attach(io: File.open(path), filename: image_path)
end

item13 = Item.create(title: 'Laptop Adaptor', description: 'For HP Laptops', username: 'Jabra Ram', phone: '8756657656',
                     city: 'Jaipur', category_id: category3.id, approved: true, user_id: regular_user2.id, approved_by_id: admin.id)
image_paths = ['laptop_charger.jpeg', 'laptop_charger2.jpeg']
image_paths.each do |image_path|
  path = Rails.root.join('app', 'assets', 'images', image_path)
  item13.images.attach(io: File.open(path), filename: image_path)
end

item14 = Item.create(title: 'Induction', description: 'For all cooking items', username: 'Jabra Ram', phone: '8756657656',
                     city: 'Jaipur', category_id: category3.id, approved: true, user_id: regular_user2.id, approved_by_id: admin.id)
image_paths = ['induction.jpeg', 'induction2.jpeg']
image_paths.each do |image_path|
  path = Rails.root.join('app', 'assets', 'images', image_path)
  item14.images.attach(io: File.open(path), filename: image_path)
end
# rubocop:enable Layout/LineLength
