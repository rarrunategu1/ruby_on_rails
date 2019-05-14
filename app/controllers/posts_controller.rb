class PostsController < ApplicationController
  def index
    #show all the posts
    @posts = Post.all
  end
    
  def new; end

  def show
    # will get the single post from create
    @post = Post.find(params[:id])
  end

  def create
    # will render the information entered and submitted in the new form
    # render plain: params[:post].inspect

    @post = Post.new(post_params)
    @post.save
    redirect_to @post

    # private method tells it that we want to allow it to have a title and a body
  end

  private def post_params
    params.require(:post).permit(:title, :body)
    end
end
