class LecturesController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  before_action :set_lecture, only: [:show]

  def show
    authorize @lecture
    @comments = @lecture.comments.all
    @comment = Comment.new
  end

  private

  def set_lecture
    @course = Course.friendly.find(params[:course_id])
    @lecture = @course.lectures.friendly.find(params[:id])
    @nlecture = @lecture.next
    @plecture = @lecture.prev
  end
end
