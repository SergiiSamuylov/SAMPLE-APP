class UsersController < ApplicationController
  def index
  end

  def show
    unless @user = User.find(params[:id])
      render(text: "<h1>User not found</h1>", status: 404)
    end
    # debugger
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end

end
