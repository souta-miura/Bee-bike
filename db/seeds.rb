# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create(email: '1@1', password: '123456')
User.create(last_name: 'test1', first_name: 'test1', last_name_kana: 'テスト１', first_name_kana: 'テスト１', email: 'test1@email', postal_code: 'test1pos', address: 'test1add', phone_number: 'test1tel', password: '123456')