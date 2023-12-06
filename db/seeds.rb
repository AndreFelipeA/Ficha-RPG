# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create!(name: "admin", email: "admin@example.com", password: "admin123", isAdmin: true)
User.create!(name: "user", email: "user@example.com", password: "user123", isAdmin: false)
Item.create!(name: "sword", damage: 5, defense: 0)
Item.create!(name: "shield", damage: 1, defense: 5)
Item.create!(name: "armor", damage: 0, defense: 10)
Item.create!(name: "helmet", damage: 0, defense: 5)
Character.create!(name: "Personagem 1", classe:"Rogue", str: 8, dex: 14, int: 15, con:10, wis: 10, cha: 12, user_id: 1)
Character.create!(name: "Personagem 2", classe:"Paladin", str: 8, dex: 14, int: 15, con:10, wis: 10, cha: 12, user_id: 1)
Character.create!(name: "Personagem 3", classe:"Mage", str: 8, dex: 14, int: 15, con:10, wis: 10, cha: 12, user_id: 2)
Character.create!(name: "Personagem 4", classe:"Warrior", str: 8, dex: 14, int: 15, con:10, wis: 10, cha: 12, user_id: 2)
History.create!(history:"Historia 1", city: "Cidade 1", race: "Fada", characteristics:"caracteristicas 1", character_id: 1)
History.create!(history:"Historia 2", city: "Cidade 2", race: "Fada", characteristics:"caracteristicas 2", character_id: 2)
History.create!(history:"Historia 3", city: "Cidade 3", race: "Fada", characteristics:"caracteristicas 3", character_id: 3)
History.create!(history:"Historia 4", city: "Cidade 4", race: "Fada", characteristics:"caracteristicas 4", character_id: 4)




