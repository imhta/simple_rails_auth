# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :logged_in_user, only: %i[new create]

  def new
    @post = current_user.posts.new
  end

  def create
    @post = current_user.posts.new(posts_params)
    if @post.save
      redirect_to root_path
    else
      puts 'Something wrong'
    end
  end

  def index
    @posts = Post.all
    @user = current_user
    @loggedin = logged_in?
  end

  def show; end

  private

  def logged_in_user
    unless logged_in?
      store_location
      redirect_to login_url
    end
  end

  def posts_params
    params.require(:post).permit(:title, :body)
  end
end
