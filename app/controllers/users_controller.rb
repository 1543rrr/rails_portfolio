class UsersController < ApplicationController
  before_action :authenticate_user!, only: :show
  def show
    @user = User.find(params[:id])
    # @comment = current_user.comments
    @comment = @user.comments
    # @prototypes = current_user.prototypes
    @posts = @user.posts
  end
end
