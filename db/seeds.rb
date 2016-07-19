# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Work.destroy_all
User.destroy_all

User.create(name: 'Nombre1', email: 'Email1')
User.create(name: 'Nombre2', email: 'Email2')

Work.create(description: 'Description1', user_id: User.first.id)
Work.create(description: 'Description2', user_id: User.first.id)
Work.create(description: 'Description3', user_id: User.second.id)
