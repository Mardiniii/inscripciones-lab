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

class Club < ActiveRecord::Base
  belongs_to :user
  has_one :president
  has_many :fields
  has_one :manager
  has_many :registrations
end
