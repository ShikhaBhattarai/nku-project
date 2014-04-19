class UsersController < ApplicationController
  
  skip_before_filter :require_authentication

  def index
    unless params[:search].nil?  
      redirect_to search_path(:search => params[:search])
    end
  end
  def new
    @user = User.new
  end

  def create
    @user = User.create!(user_params)
    session[:user_id] = @user.id
    redirect_to :root, notice: "Hi #{@user.firstname}. Welcome!"
  end
 
  private

  def user_params
    params.require(:user).permit!
  end
end





