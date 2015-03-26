class UsersController < ApplicationController
   
  before_action :logged_in?, only: [:show]
  before_action :set_user

  def index
  end

  def show
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.create(user_params)
    if @user.save
      login @user
      redirect_to sessions_new_path(@user.id)
    end
  end

  def edit
  end

  private

  def user_params
  	params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
