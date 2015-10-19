# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create(first_name: "Test", last_name:"Testoni", email:"testo@te.st", password:"test")
role1 = Role.create(role_name: "admin")
role2 = Role.create(role_name: "user")

user_role = UserRole.create(role_id:role1.id, user_id:user.id)
