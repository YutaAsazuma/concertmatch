class User < ApplicationRecord
  # Include default devise modules. Others available are:
  ##:confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable

  enum gender: { male: 0, female: 1, other: 2 }

  validates :email, presence: true
  validates :password, presence: true, length: { minimum: 6 }

  has_many :favorites, dependent: :destroy
  has_many :forums, dependent: :destroy
  has_many :comments, dependent: :destroy

  def favorited?(concert)
    concert.users.include?(self)
  end
  has_one_attached :photo
end
