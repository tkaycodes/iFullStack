FactoryGirl.define do
  factory :tag do |t| 
    t.name { Faker::Commerce.department(1) }
  end
end