class Favorite < ApplicationRecord
  belongs_to :user, class_name: 'User'
  belongs_to :tweet, class_name: 'Micropost'
  
  validates :user_id, presence: true
  validates :tweet_id, presence: true
end
