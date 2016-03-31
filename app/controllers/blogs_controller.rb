class BlogsController < ApplicationController
  before_filter :authenticate, :only => [:new, :edit]

  def index
    if params[:tagid].present?
      # @blogs=Blog.all.where(id:21);
      @blogs = Blog.joins(:tags).where("tags.id=?", "#{params[:tagid]}")
      @currentfilter = Tag.find(params[:tagid]);
    else
      @blogs = Blog.all
    end
  end

  def edit
    @blog = Blog.find(params[:id]);
  end

  def update
    @blog = Blog.find(params[:id]);
    if @blog.update(blog_params)
      redirect_to @blog
    else 
      flash.now[:error] = "coudlnt save"
      render action: "edit"    
    end
  end

  def show
    @blog=Blog.find(params[:id])
  end

  def new 
    @blog = Blog.new
  end

  def create
    puts 'hello'
    @blog = Blog.new(blog_params)
      if @blog.save
        redirect_to @blog
      else
        flash.now[:error] = "coudlnt save"
        render action: "new"
      end
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :body, :sub_heading)
  end

  def authenticate 
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BLOG_USERNAME"] && password == ENV["BLOG_PASSWORD"]
    end
  end

end
