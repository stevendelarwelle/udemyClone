class TradesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_course, only: [:create]

  def create
    @trade = current_user.buy_course(@course)
    respond_to do |format|
      format.html {redirect_to course_path(@course), notice: 'You bought the course!'}
    end
  end

  private

  def set_course
    @course = Course.find(params[:course_id])
  end
end
