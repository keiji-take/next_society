class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :tweets
  has_many :rooms
  
  def was_attached?
    image.attached?
  end
  has_one_attached :image

  with_options presence: true do
    validates :name
    validates :gender_id
    validates :birth_date
    validates :tel_number
    validates :occupation_id
  end
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :occupation
  belongs_to :gender
  belongs_to :location
end
