# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Member.destroy_all

Member.create({f_name: "Gretchen", l_name: "Ziegler", address: "350 19th Street", email: "gretchenziegler@gmail.com", password: "password", section: "alto"})