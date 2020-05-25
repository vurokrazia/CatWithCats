class GameRoot < ApplicationRecord
  belongs_to :user
  has_many :groups
  validates :user_id, presence: true, uniqueness:true
end