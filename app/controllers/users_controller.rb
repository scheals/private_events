class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def show
    @user = User.find(params[:id])

    if @user == current_user
      @user
    else
      flash[:error] = "That's private!"
      redirect_to current_user, status: :unauthorized
    end
  end
end
