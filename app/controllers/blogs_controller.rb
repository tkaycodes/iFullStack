class BlogsController < ApplicationController
  def index
    if params[:tagid].present?
      @blogs=Blog.all.where(id:21);
    else
      @blogs = Blog.all
    end
  end

  def show
    @blog=Blog.find(params[:id])
  end
end
