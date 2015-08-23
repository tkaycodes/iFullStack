class Blog < ActiveRecord::Base
  has_many :tagged_blogposts;
  has_many :tags, through: :tagged_blogposts;
end
