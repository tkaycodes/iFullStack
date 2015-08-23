class Tag < ActiveRecord::Base
  validates :name, uniqueness: true
  # join table
  has_many :tagged_blogposts
  #Tag.create(name:[string]).tagged_blogposts.blogs
  has_many :blogs, through: :tagged_blogposts
end
