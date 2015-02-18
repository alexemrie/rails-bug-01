class RegistrationsController < ApplicationController

  def new
    @user = User.new
  end

  def create
  @user = User.new(registration_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def registration_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
