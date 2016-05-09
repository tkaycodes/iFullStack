class Blog < ActiveRecord::Base
  has_many :tagged_blogposts;
  has_many :tags, through: :tagged_blogposts;

  # override rails method for converting blog object to url param
  def to_param
    "#{id} #{title}".parameterize
  end

  def next
    Blog.where("id > ?", id).limit(1).first
  end

  def previous
    # Blog.where("id < ?", id).limit(1).first
    Blog.where("id < ?", id).last
  end

end
