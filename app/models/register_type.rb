# == Schema Information
#
# Table name: register_types
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class RegisterType < ActiveRecord::Base
	has_many :registers
end
