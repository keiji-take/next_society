class Tweet < ApplicationRecord
  with_options presence: true do
    validates :title
    validates :occupation
    validates :boast
  end
end
