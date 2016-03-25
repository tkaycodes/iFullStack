class BlogsController < ApplicationController
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
    params.require(:blog).permit(:title, :body)
  end

end
