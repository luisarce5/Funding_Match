# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(user_name: 'Sarah', company_name: 'Clover Bakery', user_description: 'delicious cookies', town: "Springfield", capital_amount: '', score: '10', borrower: true, profile_photo: '', password: 'Sarah', password_confirmation: 'Sarah')
User.create(user_name: 'Robert', company_name: 'The Corner Stationary', user_description: 'stationary supplies', town: "Riverdale", capital_amount: '', score: '10', borrower: true, profile_photo: '', password: 'Robert', password_confirmation: 'Robert')
User.create(user_name: 'Julia', company_name: 'The Coffe Clouds', user_description: 'hand pressed capuccino', town: "Spring Falls", capital_amount: '', score: '10', borrower: true, profile_photo: '', password: 'Julia', password_confirmation: 'Julia')
User.create(user_name: 'John', company_name: 'The Tool Experts', user_description: 'hardware specialty tools', town: "Lakeview", capital_amount: '', score: '9', borrower: true, profile_photo: '', password: 'John', password_confirmation: 'John')


# User.create(title: 'Restaurant kitchen renovation', loan_amount: 5,000, loan_description: 'increase the kitchen space to match the increasing demand', location: 'Cascades', category: 'restaurant', start_date: '', term: 36, interest_rate: .07, profile_photo: '', password_digest: '')
# User.create(title: 'Restaurant kitchen renovation', loan_amount: 5,000, loan_description: 'increase the kitchen space to match the increasing demand', location: 'Cascades', category: 'restaurant', start_date: '', term: 36, interest_rate: .07, profile_photo: '', password_digest: '')
# User.create(title: 'Restaurant kitchen renovation', loan_amount: 5,000, loan_description: 'increase the kitchen space to match the increasing demand', location: 'Cascades', category: 'restaurant', start_date: '', term: 36, interest_rate: .07, profile_photo: '', password_digest: '')
