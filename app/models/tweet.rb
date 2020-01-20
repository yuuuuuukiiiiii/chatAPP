class Tweet < ApplicationRecord
  # validates :text,    length: { in: 1..5 } 
  belongs_to :user
  has_many :comments
end
