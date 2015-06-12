class LecturesController < ApplicationController
  before_action :set_lecture, only: [:show]

  def show
    commontator_thread_show(@lecture)
  end

  private

  def set_lecture
    @course = Course.find(params[:course_id])
    @lecture = @course.lectures.find(params[:id])
  end
end
