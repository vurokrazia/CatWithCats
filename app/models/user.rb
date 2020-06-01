# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  available              :boolean          default(FALSE)
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :profile
  has_many :groups
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
