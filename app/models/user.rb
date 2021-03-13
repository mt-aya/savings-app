class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{6,32}+\z/i.freeze

  validates :password, format: { with: VALID_PASSWORD_REGEX }
  validates :name, presence: true, length: { minimum: 3, maximum: 16 }
end
