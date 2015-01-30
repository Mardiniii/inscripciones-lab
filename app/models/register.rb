# == Schema Information
#
# Table name: registers
#
#  id               :integer          not null, primary key
#  register_type_id :integer
#  inscription_id   :integer
#  first_name       :string
#  second_name      :string
#  first_last_name  :string
#  second_last_name :string
#  date_of_birth    :date
#  eps              :string
#  email            :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Register < ActiveRecord::Base
  belongs_to :register_type
  belongs_to :inscription
end
