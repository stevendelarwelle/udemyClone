class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :lecture
  belongs_to :course
  validates_presence_of :content
  validates_presence_of :content_html
  validates_presence_of :user_id
  validates_presence_of :lecture_id
  validates_presence_of :course_id

  auto_html_for :content do
    html_escape
    link :target => "_blank", :rel => "nofollow"
    simple_format
  end
end
