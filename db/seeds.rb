Article.destroy_all

30.times do
  Article.create(
    title: Faker::Book.title,
    content: Faker::Lorem.paragraphs.join("\n\n"),
    created_at: Faker::Time.between(from: 1.year.ago, to: Time.now),
    updated_at: Faker::Time.between(from: 1.year.ago, to: Time.now)
  )
end

puts "30 articles created."
