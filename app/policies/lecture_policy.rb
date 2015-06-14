class LecturePolicy
  attr_reader :current_user, :lecture

  def initialize(current_user, lecture)
    @current_user = current_user
    @lecture = lecture
  end

  def show?
    @current_user == @lecture.user || @lecture.course.bought(@current_user) == false
  end

end