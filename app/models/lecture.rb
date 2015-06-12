class Lecture < ActiveRecord::Base
  belongs_to :user
  belongs_to :course
  validates :user_id, presence: true
  validates :course_id, presence: true
  validates :name, presence: true
  validates :seq_number, presence: true
end
