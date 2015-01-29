# == Schema Information
#
# Table name: registrations
#
#  id            :integer          not null, primary key
#  tournament_id :integer
#  club_id       :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Registration < ActiveRecord::Base
  belongs_to :tournament
  belongs_to :club
  has_many :registers, dependent: :destroy
end
