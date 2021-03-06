class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate, except: [:new, :create]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show

  end

  def edit

  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Thanks for signing up!"
    else
      render :new
    end
  end


  private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:username, :password, :password_confirmation)
    end

end
