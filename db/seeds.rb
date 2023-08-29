Article.destroy_all
User.destroy_all

  user = User.create(
    email: "test@test.fr",
    password: "123456",
    created_at: Faker::Time.between(from: 1.year.ago, to: Time.now),
    updated_at: Faker::Time.between(from: 1.year.ago, to: Time.now)
  )

30.times do
  
  Article.create(
    title: Faker::Book.title,
    content: Faker::Lorem.paragraphs.join("\n\n"),
    user_id: user.id,
    created_at: Faker::Time.between(from: 1.year.ago, to: Time.now),
    updated_at: Faker::Time.between(from: 1.year.ago, to: Time.now)
  )
end

puts "30 articles created."
