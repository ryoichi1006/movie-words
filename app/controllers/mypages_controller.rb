class MypagesController < ApplicationController
  
  def index
    @past = Post.where(user_id: current_user.id)
  end

  def show
  end
  
end
