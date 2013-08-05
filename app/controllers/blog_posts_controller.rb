class BlogPostsController < ApplicationController
  def index
    @posts= BlogPost.all
  end

  def new
    @post = BlogPost.new
  end

  def create
    @post = BlogPost.create(params["blog_post"])
    redirect_to blog_posts_path
  end

  def show
    @post = BlogPost.find(params[:id])
    @comments = @post.comments.all
    @comment = @post.comments.new

  end

  def edit
  end
end
