class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  after_create :create_room_gate
  has_one :game_root
  has_one :profile
  def create_room_gate
    self.create_game_root!
  end
end
# class ClassName
#   attr :n
#   def initialize
#     @n ||= 0
#   end
#   def email
#     @n = @n + 1
#     "jesus_#{@n}@test.com"
#   end
#   def password
#     123456
#   end
#   def self.hash_params
#     self.initialize
#     {
#       email:self.email,
#       password:self.password
#     }
#   end
# end
