class Blog < ActiveRecord::Base
  has_many :tagged_blogposts;
  has_many :tags, through: :tagged_blogposts;

  # override rails method for converting blog object to url param
  def to_param
    "#{id} #{title}".parameterize
  end

end
