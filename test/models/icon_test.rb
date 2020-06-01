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
require 'test_helper'

class IconTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
