require "faker"

puts "Creating 10 fake articles..."
10.times do
  article = Article.new(
    title: Faker::Book.title,
    content: "#{Faker::Book.author}, #{Faker::Book.publisher}, #{Faker::Book.genre}"
  )
  article.save!
end
puts "Finished!"
