class Course < ActiveRecord::Base
  belongs_to :user
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
  validates :user_id, presence: true
end
