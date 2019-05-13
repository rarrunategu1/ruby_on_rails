class PostsController < ApplicationController
  def index; end

  def new; end

  def create
    # will render the information entered and submitted in the new form
    render plain: params[:post].inspect
  end
end
