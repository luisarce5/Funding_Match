# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(user_name: 'Sarah', company_name: 'Clover Bakery', user_description: 'delicious cookies', town: "Springfield", capital_amount: '', score: '10', borrower: true, profile_photo: '', password_digest: 'Sarah')
User.create(user_name: 'Robert', company_name: 'The Corner Stationary', user_description: 'stationary supplies', town: "Riverdale", capital_amount: '', score: '10', borrower: true, profile_photo: '', password_digest: 'Robert')
User.create(user_name: 'Julia', company_name: 'The Coffe Clouds', user_description: 'hand pressed capuccino', town: "Spring Falls", capital_amount: '', score: '10', borrower: true, profile_photo: '', password_digest: 'Robert')
User.create(user_name: 'John', company_name: 'The Tool Experts', user_description: 'hardware specialty tools', town: "Lakeview", capital_amount: '', score: '9', borrower: true, profile_photo: '', password_digest: 'Robert')
