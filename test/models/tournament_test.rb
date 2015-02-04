# == Schema Information
#
# Table name: tournaments
#
#  id           :integer          not null, primary key
#  categorie_id :integer
#  start_date   :date
#  end_date     :date
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  name         :string
#  description  :text
#  deadline     :date
#

require 'test_helper'

class TournamentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
