Article.destroy_all
User.destroy_all
Comment.destroy_all

5.times do
  user = User.create(
    email: Faker::Internet.email,
    password: "123456",
    created_at: Faker::Time.between(from: 1.year.ago, to: Time.now),
    updated_at: Faker::Time.between(from: 1.year.ago, to: Time.now)
  )

  5.times do
    article = Article.create(
      title: Faker::Book.title,
      content: Faker::Lorem.paragraphs,
      user_id: user.id,
      private: rand < 0.3,
      created_at: Faker::Time.between(from: 1.year.ago, to: Time.now),
      updated_at: Faker::Time.between(from: 1.year.ago, to: Time.now)
    )

    2.times do
      Comment.create(
        content: Faker::Lorem.paragraphs,
        user_id: user.id,
        article_id: article.id,
        created_at: Faker::Time.between(from: 1.year.ago, to: Time.now),
        updated_at: Faker::Time.between(from: 1.year.ago, to: Time.now)
      )
    end
  end
end
