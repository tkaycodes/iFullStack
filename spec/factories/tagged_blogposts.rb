FactoryBot.define do 
  factory :TaggedBlogpost do |t|
    t.blog_id { 1 }
    t.tag_id  { 1 }
  end
end