class User < ApplicationRecord
  # Include default devise modules. Others available are:
  ##:confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum gender: { male: 0, female: 1, other: 2 }

  validates :email, presence: true
  validates :password, presence: true, length: { minimum: 6 }

  has_many :favorites, dependent: :destroy
  has_many :forums, dependent: :destroy
end
