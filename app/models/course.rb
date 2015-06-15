class Course < ActiveRecord::Base
  belongs_to :user
  has_many :lectures, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :trades, dependent: :destroy
  has_many :users, through: :trades
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true
  validates :user_id, presence: true
  extend FriendlyId
    friendly_id :name, use: :slugged

  def bought(user)
    self.trades.where(user_id: [user.id], course_id: [self.id]).empty?
  end
end
