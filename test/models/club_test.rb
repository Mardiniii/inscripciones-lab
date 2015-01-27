# == Schema Information
#
# Table name: clubs
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  name         :string
#  address      :string
#  email        :string
#  municipality :string
#  phone        :string
#  cellphone    :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class ClubTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
