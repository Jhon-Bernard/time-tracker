class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # has_many :attendances
  # has_many :track_times
  has_many :trackers
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :firstname, presence: true, length: {minimum: 3, maximum: 50}
  validates :lastname, presence: true, length: {minimum: 3, maximum: 50}
  def admin?
    has_attribute?(:admin) == true
  end

end
