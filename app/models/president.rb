# == Schema Information
#
# Table name: presidents
#
#  id             :integer          not null, primary key
#  name           :string
#  identification :string
#  phone          :string
#  fax            :string
#  cellphone      :string
#  email          :string
#  club_id        :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class President < ActiveRecord::Base
  belongs_to :club
end
