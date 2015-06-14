class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :courses, dependent: :destroy
  has_many :lectures, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :trades, dependent: :destroy
  has_many :courses, through: :trades

  def buy_course(course)
    self.trades.create(course: course)
  end
end
