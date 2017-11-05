class TaggedBlogpostsController < ApplicationController

  layout "blog_tags"

  
  def index

    @taggedBlogPosts = TaggedBlogpost.all
    @tags = Tag.all


  end

end
