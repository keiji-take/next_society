class Room < ApplicationRecord
  has_many :companies
  has_many :users
  has_many :messages
end
