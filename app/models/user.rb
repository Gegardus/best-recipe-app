class User < ApplicationRecord
  has_many :foods
  has_many :recipes
<<<<<<< HEAD
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
=======
 
>>>>>>> 44ee7ef394629fb347d0e47b43555f63d7297d65
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true, length: { in: 1..50 }

  def admin?(requested_role)
    role == requested_role.to_s
  end
end
