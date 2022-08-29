# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create(email: '1@1', password: '123456')
User.create(last_name: 'test1', first_name: 'test1', last_name_kana: 'テスト１', first_name_kana: 'テスト１', email: 'test1@email', postal_code: 'test1pos', address: 'test1add', phone_number: 'test1tel', password: '123456')
User.create(last_name: 'test2', first_name: 'test2', last_name_kana: 'テスト２', first_name_kana: 'テスト２', email: 'test2@email', postal_code: 'test2pos', address: 'test2add', phone_number: 'test2tel', password: '123456')
User.create(last_name: 'test3', first_name: 'test3', last_name_kana: 'テスト３', first_name_kana: 'テスト３', email: 'test3@email', postal_code: 'test3pos', address: 'test3add', phone_number: 'test3tel', password: '123456')
User.create(last_name: 'test4', first_name: 'test4', last_name_kana: 'テスト４', first_name_kana: 'テスト４', email: 'test4@email', postal_code: 'test4pos', address: 'test4add', phone_number: 'test4tel', password: '123456')
User.create(last_name: 'test5', first_name: 'test5', last_name_kana: 'テスト５', first_name_kana: 'テスト５', email: 'test5@email', postal_code: 'test5pos', address: 'test5add', phone_number: 'test5tel', password: '123456')
User.create(last_name: 'test6', first_name: 'test6', last_name_kana: 'テスト６', first_name_kana: 'テスト６', email: 'test6@email', postal_code: 'test6pos', address: 'test6add', phone_number: 'test6tel', password: '123456')
User.create(last_name: 'test7', first_name: 'test7', last_name_kana: 'テスト７', first_name_kana: 'テスト７', email: 'test7@email', postal_code: 'test7pos', address: 'test7add', phone_number: 'test7tel', password: '123456')
User.create(last_name: 'test8', first_name: 'test8', last_name_kana: 'テスト８', first_name_kana: 'テスト８', email: 'test8@email', postal_code: 'test8pos', address: 'test8add', phone_number: 'test8tel', password: '123456')
User.create(last_name: 'test9', first_name: 'test9', last_name_kana: 'テスト９', first_name_kana: 'テスト９', email: 'test9@email', postal_code: 'test9pos', address: 'test9add', phone_number: 'test9tel', password: '123456')
User.create(last_name: 'test10', first_name: 'test10', last_name_kana: 'テスト１０', first_name_kana: 'テスト１０', email: 'test10@email', postal_code: 'test10pos', address: 'test10add', phone_number: 'test10tel', password: '123456')

Genre.create(name: 'スクーター')
Genre.create(name: 'ネイキッド')
Genre.create(name: 'スポーツ/レプリカ')
Genre.create(name: 'クラシック')
Genre.create(name: 'オフロード')
Genre.create(name: 'アメリカン')
Genre.create(name: 'ツアラー')
Genre.create(name: 'アドベンチャー')
Genre.create(name: 'EV')

Maker.create(name: 'ホンダ')
Maker.create(name: 'ヤマハ')
Maker.create(name: 'スズキ')
Maker.create(name: 'カワサキ')
Maker.create(name: 'ハーレーダビッドソン')
Maker.create(name: 'BMW')
Maker.create(name: 'DUCATI')
Maker.create(name: 'KTM')

CcClass.create(name: '50cc以下')
CcClass.create(name: '51~125cc')
CcClass.create(name: '126~250cc')
CcClass.create(name: '251~400cc')
CcClass.create(name: '401~750cc')
CcClass.create(name: '751cc以上')