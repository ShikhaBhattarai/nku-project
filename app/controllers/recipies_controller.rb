class RecipiesController < ApplicationController
  
  def index
    @recipies = Recipie.all
  end
  
  def show
    @recipie = Recipie.find(params[:id])
    @comments = Comment.where(:recipe_id => params[:id])
    @comment = Comment.new
  end
  
  def comment
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    @comment.save
    redirect_to recipy_path(params[:comment][:recipe_id])
  end
  
  def comment_params
    params.require(:comment).permit!
  end
  
end

