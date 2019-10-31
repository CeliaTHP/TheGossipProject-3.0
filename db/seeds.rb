# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

User.destroy_all
MessagePrive.destroy_all
Tag.destroy_all
TagGossip.destroy_all
Gossip.destroy_all
City.destroy_all

u = []
c = []
g = []
t = []
#dans ma première boucle je crée city car mes users en ont besoin pour être créé
10.times do |index|
	c << City.create(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end
#dans ma deuxième boucleje crée mes user car mes gossip en auront besoin pour être crée
10.times do |index|
	u << User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.sentence(word_count: 10), email: Faker::Internet.email, age: rand(0..99), city: c.sample)
	puts "User : #{Faker::Name.first_name}"
end
20.times do |index|
#dans ma 3eme boucle et 4eme boucle je créé juste un nombre différent de gossip et tag
	g << Gossip.create(title: Faker::Book.title, content: Faker::Lorem.sentence(word_count: 20), user: u.sample)
	puts "Gossip : #{Faker::Book.title}"
end
10.times do |index|
	t << Tag.create(title: Faker::Book.title)
	puts "Tag : #{Faker::Book.title}"
end
#dans ma 5eme boucle je crée ma table intermédiaire afin de tester si mes tables sont bien en lien
10.times do |index|
	TagGossip.create(tag: t.sample, gossip: g.sample)
end
#dans ma 6eme boucle je test mes messages privé. dans ce cas nous ne pouvons pas mettre .create car il doit, avant d'être save déterminer qui envoie et qui recoit le message
2.times do |index|
	m = MessagePrive.new(content:Faker::Lorem.sentence(word_count: 20))
	m.sender = u.sample
	m.recipient = u.sample
	m.save
end
