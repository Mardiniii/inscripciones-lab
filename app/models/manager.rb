# == Schema Information
#
# Table name: managers
#
#  id         :integer          not null, primary key
#  name       :string
#  cellphone  :string
#  phone      :string
#  email      :string
#  club_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Manager < ActiveRecord::Base
  belongs_to :club
end
