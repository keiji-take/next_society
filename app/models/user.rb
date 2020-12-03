class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :tweets
  def was_attached?
    image.attached?
  end
  has_one_attached :image

  with_options presence: true do
    validates :name
    validates :gender
    validates :birth_date
    validates :tel_number
    validates :occupation
  end
end
