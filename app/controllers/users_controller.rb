class UsersController < ApplicationController
  before_filter lambda { @body_class = 'users-page' }

  def index
    @user = User.all
  end

  def update
    @user = User.find_by_name(params[:id])
    if @user.update_attributes(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  def edit
    @user = User.find_by_name(params[:id])
  end

  def show
    @user = User.find_by_name(params[:id])
    @users_cats = Cat.all.where('user_id' => @user)
    @users_cats_count = @users_cats.count
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
