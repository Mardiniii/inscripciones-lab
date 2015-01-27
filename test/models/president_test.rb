# == Schema Information
#
# Table name: presidents
#
#  id             :integer          not null, primary key
#  name           :string
#  identification :integer
#  phone          :string
#  fax            :string
#  cellphone      :string
#  email          :string
#  club_id        :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class PresidentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
