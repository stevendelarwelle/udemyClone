class Lecture < ActiveRecord::Base
  belongs_to :user
  belongs_to :course
  has_many :comments
  validates :user_id, presence: true
  validates :course_id, presence: true
  validates :name, presence: true
  validates :seq_number, presence: true
  extend FriendlyId
    friendly_id :name, use: :slugged

  def prev
    course.lectures.where("seq_number < ?", seq_number).order(:seq_number).last
  end

  def next
    course.lectures.where("seq_number > ?", seq_number).order(:seq_number).first
  end
end
