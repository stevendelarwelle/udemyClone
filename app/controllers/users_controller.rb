class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def show
  end

  private

  def set_user
    @user = User.friendly.find(params[:id])
    @courses = Trade.where(user_id: @user.id).map(&:course)
    @courses = @courses + Course.where(user_id: @user.id)
  end
end