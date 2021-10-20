class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @books = @user.books
    @book = Book.new
  end

  def index
  @users = User.all
  @book =Book.new
  @user = User.find(current_user.id)
  end

  def edit
    @user = User.find(params[:id])
    if @user == current_user
      render :edit
    else
      redirect_to user_path(current_user)
    end
  end


  private

  def user_params
    params.require(:user).permit(:name,:introduction,:profile_image)
  end
end

