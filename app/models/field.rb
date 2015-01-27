# == Schema Information
#
# Table name: fields
#
#  id         :integer          not null, primary key
#  type       :integer
#  address    :string
#  club_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Field < ActiveRecord::Base
	enum type: [:Cemento,:Maderame]
  belongs_to :club
  has_many :field_hours, dependent: :destroy
end
