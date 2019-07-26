# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



user = User.create(email: "pedro.loureiro7@hotmail.com", password: "asdasd")
user1 = User.create(email: "a", password: "asdasd")
user2 = User.create(email: "asdasd", password: "asdasd")
user3 = User.create(email: "asdasda", password: "asdasd")
user4 = User.create(email: "qweqwem", password: "asdasd")

fact = Fact.create(text: "Fact", user_id:user.id)
fact1 = Fact.create(text: "Fact", user_id:user1.id)
fact2 = Fact.create(text: "Fact", user_id:user2.id)
fact3 = Fact.create(text: "Fact", user_id:user3.id)
fact4 = Fact.create(text: "Fact", user_id:user4.id)


like1 = Like.create(fact_id:fact.id, user_id:user4.id)

comment = Comment.create(text: "I am a comment", fact_id:Fact.all.last.id, user_id:User.all.last.id)

