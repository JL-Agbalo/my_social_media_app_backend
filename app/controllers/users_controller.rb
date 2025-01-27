class UsersController < ApplicationController
  def create
   raise "SIGNUP"
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end