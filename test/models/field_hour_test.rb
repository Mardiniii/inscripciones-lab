# == Schema Information
#
# Table name: field_hours
#
#  id           :integer          not null, primary key
#  open_hour    :time
#  closing_time :time
#  field_id     :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  day_id       :integer
#

require 'test_helper'

class FieldHourTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
