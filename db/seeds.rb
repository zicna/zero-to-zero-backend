# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "📃 Seeding data..."

languages = [
    {name: "JavaScript"},{name: "Ruby"},{name: "Java"}
]

languages.map do |lang|
    Language.find_or_create_by(name: lang[:name]) do |l|
        l.name = lang[:name]
        puts("language #{l.name} was created")
    end
end

levels = [
    {name: "Intership"},
    {name: "Junior"},
    {name: "Medior"},
    {name: "Senior"},
    {name: "Principal"}
]

levels.map do |level|
    Level.find_or_create_by(name: level[:name]) do |l|
        l.name = level[:name]
        puts("level #{l.name} was created")
    end
end

questions = [
    {language_id: 1, level_id: 1, title: "Hoisting in JS", description: "Explain hoisting in JavaScript, with example of your choice", git_hub_link: ""}
]

questions.map do |question|
    Question.find_or_create_by(title: question[:title]) do |q|
        q.language_id = question[:language_id]
        q.level_id = question[:level_id]
        q.title = question[:title]
        q.description = question[:description]
        q.git_hub_link = question[:git_hub_link]
    end
end


puts "✅ ✅ Done seeding ✅ ✅"
