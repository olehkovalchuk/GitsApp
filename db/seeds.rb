# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
FactoryBot.create_list(:author, 20)
tagsArr = FactoryBot.create_list(:tag, 20)

Author.all.each do |user|
    FactoryBot.create_list(:article, rand(1..10),  author: user)
    user.articles.each do |article|
        FactoryBot.create_list(:comment, rand(0..10), article: article)
        article.tags.push(tagsArr.sample(3))
    end
end
