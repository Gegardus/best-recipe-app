class User < ApplicationRecord
  has_many :food
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :recipe

  validates :name, presence: true, length: { in: 1..50 }

  def admin?(requested_role)
    role == requested_role.to_s
  end
end
