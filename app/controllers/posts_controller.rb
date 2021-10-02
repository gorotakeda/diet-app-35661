class PostsController < ApplicationController
  def index
    @posts = Post.includes(:user).order('created_at DESC')
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
      flash[:notice] = "投稿が保存されました"
    else
      render :new
      flash[:alert] = "投稿に失敗しました"
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :workout, :meal, :sex_id, :age_id, :style_id, :purpose_id).merge(user_id: current_user.id)
  end
end