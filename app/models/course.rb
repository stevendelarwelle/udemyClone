class Course < ActiveRecord::Base
  belongs_to :user
  has_many :lectures, dependent: :destroy
  has_many :comments, dependent: :destroy
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
  validates :user_id, presence: true
end
