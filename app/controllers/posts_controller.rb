class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    # @post = Post.new(post_params)
    #
    # if @post.valid?
    #   @post.save
      redirect_to post_path(@post)
    # else
    #   render :new
    # end
  end

  def edit
  end

  def show
    @post = Post.find(params[:id])
  end

  def update
  end

  private

  def post_params
    params.require(:post).permit(:title, :description, :category_name)
  end

end
