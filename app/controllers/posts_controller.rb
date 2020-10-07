class PostsController < ApplicationController
  before_action :set_parents, only: [:new, :create]

  def index
  end

  def new
    @post = Post.new
  end

  def show
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to root_path, notice: "商品を出品しました"
    else
      redirect_to new_post_path,notice: "未入力の項目があります"
    end
    
  end

  private

  def set_parents
    @parents = Category.where(ancestry: nil)
  end

  def post_params
    params.require(:post).permit(
      :image, 
      :title, 
      :act, 
      :words, 
      :reason, 
      :category_id,
      :user_id,
    ).merge(user_id: current_user.id)
  end
  
end
