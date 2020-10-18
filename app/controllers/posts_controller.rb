class PostsController < ApplicationController
  before_action :set_parents, only: [:new, :create, :edit]

  def index
    @posts = Post.all.limit(10).order('created_at DESC')
    @search_posts = Post.all.page(params[:page]).search(params[:search])
    @all_ranks = Post.find(Like.group(:post_id).order('count(post_id) desc').limit(3).pluck(:post_id))
  end

  def all
    @posts = Post.all.order("created_at DESC").page(params[:page]).per(6)
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
    @user = User.find(@post.user_id)
    @category = Category.find(@post.category_id)
    @like_count = Like.where(post_id: @post.id)
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

  def edit
    @post = Post.find(params[:id])
    @category = Category.find(@post.category_id)
    @child = Category.where(ancestry: @category.parent.ancestry)
    @g_child = Category.where(ancestry: @category.ancestry)
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to post_path, notice: 'POSTを更新しました'
    else
      redirect_to edit_post_path, notice: '画像を１枚以上入れて下さい'
    end
  end

  def destroy
    
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
      :user_id
    ).merge(user_id: current_user.id)
  end
  
end
