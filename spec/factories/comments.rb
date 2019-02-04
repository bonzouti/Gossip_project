FactoryBot.define do
  factory :comment do
    content {Faker::Lorem.paragraphs}
    user {FactoryBot.create(:user)}
    comment {Faker::GameOfThrones.quote}
  end
end
