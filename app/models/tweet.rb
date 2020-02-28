class Tweet < ApplicationRecord
  validates :text, {length: { in: 3..100 } }
  belongs_to :user
  has_many :comments
end
