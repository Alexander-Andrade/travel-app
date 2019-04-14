class User < ApplicationRecord
  extend FriendlyId
  friendly_id :email, use: :slugged
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def password_required?
    return false
  end
end
