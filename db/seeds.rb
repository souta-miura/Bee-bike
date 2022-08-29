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