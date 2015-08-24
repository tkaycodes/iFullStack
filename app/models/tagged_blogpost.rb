class TaggedBlogpost < ActiveRecord::Base
  belongs_to :blog
  belongs_to :tag
  # combination of blog id and tag id must be unique
  # one blog can be tagged with unique tag only once
  validates :blog_id, uniqueness: {scope: :tag_id}
end
