class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_lecture, only: [:index, :create, :destroy]

  def index
    @comments = @lecture.comments.all
  end

  def create
    @comment = @lecture.comments.build(comment_params)
    @comment.course = @course
    @comment.user = current_user
    if @comment.save
      respond_to do |format|
        format.html {redirect_to course_lecture_path(@course, @lecture), notice: 'Comment Posted!!!'}
      end
    else
      redirect_to :back, alert: 'Something went wrong!'
    end
  end

  def destroy
    @comment = @lecture.comments.find(params[:id])
    @comment.destroy
    respond_to do |format|
      format.html {redirect_to course_lecture_path(@course, @lecture), notice: 'Comment Deleted!'}
    end
  end

  private

  def set_lecture
    @course = Course.find(params[:course_id])
    @lecture = @course.lectures.find(params[:lecture_id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end

end
