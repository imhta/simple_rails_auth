class PostsController < ApplicationController
  before_action :logged_in_user, only: [:new, :create] 

  def new
    @post = Post.new
  end

  def create
    @user=User.find(params[:id])
    @post=current_user.posts.build(posts_params)
    if @post.save
      redirect_to 'index'
    else
      puts "Something wrong"
    end
  end

  def index
    @posts = Post.all
    @user=current_user
  end
  def show
  end
  private
    def logged_in_user
      unless logged_in?
        store_location
        redirect_to login_url
      end
    end
    def posts_params
      params.require(:post).permit(:content)
    end
end
