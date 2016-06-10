class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def user_id

  end
  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "You have successfully signed up!"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to recipes_path
  end

  def recipes
    @recipes = User.find(params[:id]).recipes
  end

  private
    # Implement Strong Params
    def user_params
      params.require(:user).permit(
        :name,
        :email,
        :password,
        :password_confirmation,
        :user_pic,
        :about_me
      )
    end
end
