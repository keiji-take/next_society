class Message < ApplicationRecord
  belongs_to :companies
  belongs_to :users
end
