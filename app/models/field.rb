# == Schema Information
#
# Table name: fields
#
#  id         :integer          not null, primary key
#  field_type :integer
#  address    :string
#  club_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Field < ActiveRecord::Base
	enum field_type: [:coliseo_madera,:coliseo_baldosa,:coliseo_concreto,:coliseo_asfalto,:coliseo_sintética,:placa_baldosa,:placa_concreto,:placa_asfalto,:placa_sintética]
  belongs_to :club
  has_many :field_hours, dependent: :destroy
  accepts_nested_attributes_for :field_hours, reject_if: proc { |attributes| attributes['day_id'].blank? }, allow_destroy: true
  validates_associated :field_hours
end
