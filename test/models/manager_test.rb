# == Schema Information
#
# Table name: managers
#
#  id             :integer          not null, primary key
#  name           :string
#  cellphone      :string
#  phone          :string
#  email          :string
#  club_id        :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  identification :string
#

require 'test_helper'

class ManagerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
