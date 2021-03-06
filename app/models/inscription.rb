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
  accepts_nested_attributes_for :registers, :limit => 25, :reject_if => :all_blank, allow_destroy: true
  validates_associated :registers
  # after_create :send_email

  # def send_email
  # 	UserMailer.new_inscription_email(self).deliver_now
  # end
end