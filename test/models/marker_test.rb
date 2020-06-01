# == Schema Information
#
# Table name: markers
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  win        :integer
#  lose       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'test_helper'

class MarkerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
