class Message < ApplicationRecord
  has_many :companies
  has_many :users
  has_one :room
end
