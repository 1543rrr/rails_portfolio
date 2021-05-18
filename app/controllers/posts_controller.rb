class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  # before_action :move_to_index, except: [:index, :show, :new, :create]
  # def index
    # @post = Post.all
  # end

  def new
    @post = Post.new
  end
  
  def create 
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else  
    render :new
    end
  end  
    
  def destroy
    post = Post.find(params[:id])
    post.destroy
  end
  
  def edit
    @post = Post.find(params[:id])
   
    # prototype = Prototype.find(params[:id])
    # prototype.edit
  end

  # def update
    # @post = Post.find(params[:id])
    # updateしたいprototypeを特定するための記述
    # if @post.update(post_params)
    # if @prototype.update(prototype_params)
      # redirect_to post_path(@post)
    #  redirect_to prototype_path(@prototypes)
      # redirect_to prototype_path()
    # redirect_to prototype_path(room_messages_path(@room))
    # prototype_pathは詳細ページに戻るためのパスだ（）の中には今回編集しようとした情報が入る
    #  else
    # render :edit
    # end
  # end
  
  # def show
    # @post = Post.find(params[:id])
    # @comment = Comment.new
    # @comments = @post.comments.includes(:user)
    
  # end
  
  private

  def post_params
    params.require(:post).permit(:title, :catch, :concept, :image).merge(user_id: current_user.id)
  end

  # def set_users
    # @users = Users.find(post_params)
  # end
  
  def move_to_index
  post = Post.find(params[:id])
  unless post.user == current_user
                              # ↑ログインしているユーザー  ログインしているユーザー＝プロトタイプのユーザー
    redirect_to action: :index 
  end
end 
end
  
