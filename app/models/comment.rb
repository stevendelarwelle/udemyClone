class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :lecture
  belongs_to :course
  validates_presence_of :content
  validates_presence_of :user_id
  validates_presence_of :lecture_id
  validates_presence_of :course_id
end
