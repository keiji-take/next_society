class Tweet < ApplicationRecord
  belongs_to :user
  
  with_options presence: true do
    validates :title
    validates :occupation_id
    validates :boast
  end
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :occupation
  
end
