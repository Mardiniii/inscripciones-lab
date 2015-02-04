# == Schema Information
#
# Table name: inscriptions
#
#  id            :integer          not null, primary key
#  tournament_id :integer
#  club_id       :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Inscription < ActiveRecord::Base
  belongs_to :tournament
  belongs_to :club
  has_many :registers, dependent: :destroy
  after_create :send_email
  accepts_nested_attributes_for :registers, :reject_if => :all_blank, allow_destroy: true
  validates_associated :registers
 

  def send_email
  	UserMailer.new_inscription_email(self).deliver_now
  end
end
