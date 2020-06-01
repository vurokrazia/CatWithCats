# == Schema Information
#
# Table name: icons
#
#  id         :integer          not null, primary key
#  name       :string
#  color      :string
#  group_id   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Icon < ApplicationRecord
  belongs_to :group
  has_one_attached :image
end
##CE90E5 #BDFFDB