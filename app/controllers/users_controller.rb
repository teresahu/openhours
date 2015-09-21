class UsersController < ApplicationController
    before_action :set_user, only: [:edit, :update, :show]

  def index
    @users = User.paginate(page: params[:page], per_page: 4)
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Hooray! You've created an account."
      redirect_to users_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      flash[:success] = "You have updated your profile."
      redirect_to user_path(@user)
    else
      render 'edit'
    end
  end

  private
    def user_params
      params.require(:user).permit(:picture, :first_name, :last_name, :email, :headline, :location, :url, :github, :skype, :linkedin, :hangouts)
    end

    def set_user
      @user = User.find(params[:id])
    end

end
