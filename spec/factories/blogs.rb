FactoryGirl.define do 
  factory :blog do |b|
    b.title { Faker::Name.title}
    b.body  { Faker::Lorem.paragraph}
  end
end