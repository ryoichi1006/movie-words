class PostsController < ApplicationController
  before_action :set_parents, only: [:new, :create]

  def index
    @posts = Post.all.limit(10).order('created_at DESC')
    @search_posts = Post.all.page(params[:page]).search(params[:search])
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
    @user = User.find(@post.user_id)
    @category = Category.find(@post.category_id)
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to root_path, notice: "商品を出品しました"
    else
      redirect_to new_post_path,notice: "未入力の項目があります"
    end
    
  end

  def search
    respond_to do |format|
      format.html
      format.json do
        if params[:parent_id]
          @childrens = Category.find(params[:parent_id]).children
        elsif params[:children_id]
          @grandChilds = Category.find(params[:children_id]).children
        end
      end
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
