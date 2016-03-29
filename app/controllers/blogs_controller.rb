class BlogsController < ApplicationController
  before_filter :authenticate, :only => :new

  def index

    # @technicalTag=Tag.find_by(name:"Technical");
    # logger.warn(@technicalTag);
    # puts @technicalTag;

    if params[:tagid].present?
      # @blogs=Blog.all.where(id:21);
      @blogs = Blog.joins(:tags).where("tags.id=?", "#{params[:tagid]}")
      @currentfilter = Tag.find(params[:tagid]);
    else
      @blogs = Blog.all
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
      username == CONFIG["BLOG_USERNAME"] && password == CONFIG["BLOG_PASSWORD"]
    end
  end

end
