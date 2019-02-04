FactoryBot.define do
  factory :gossip do
    title {Faker::Coffee.variety}
    content {Faker::Lorem.paragraphs}
    #user {Faker::Football.player}
    user {FactoryBot.create(:user)}
    
  end
end
