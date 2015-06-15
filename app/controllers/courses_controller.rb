class CoursesController < ApplicationController
  before_action :set_course, only: [:show]
  def index
    @courses = Course.all.order('created_at DESC')
  end

  def show
    @lectures = @course.lectures.all.order("seq_number ASC")
  end

  private

  def set_course
    @course = Course.friendly.find(params[:id])
  end
end
