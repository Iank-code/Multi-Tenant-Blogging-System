class Organisation < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable

  # Associations
  has_one :account, dependent: :destroy
  has_many :admins, dependent: :destroy
end
