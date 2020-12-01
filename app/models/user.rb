class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :tweets
  
  with_options presence: true do
    validates :name
    validates :gender
    validates :birth_date
    validates :tel_number
    validates :occupation
  end
end
