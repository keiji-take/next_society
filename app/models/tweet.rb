class Tweet < ApplicationRecord
  belongs_to :user
  
  with_options presence: true do
    validates :title
    validates :occupation_id
    validates :boast
  end
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :occupation
  def self.search(search)
    if search != ""
      Tweet.where('boast LIKE(?)', "%#{search}%").or(Tweet.where('title LIKE(?)', "%#{search}%"))
    else
      Tweet.all
    end
  end
end
