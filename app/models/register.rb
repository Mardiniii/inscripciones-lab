# == Schema Information
#
# Table name: registers
#
#  id                  :integer          not null, primary key
#  register_type_id    :integer
#  inscription_id      :integer
#  first_name          :string
#  second_name         :string
#  first_last_name     :string
#  second_last_name    :string
#  date_of_birth       :date
#  eps                 :string
#  email               :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  avatar_file_name    :string
#  avatar_content_type :string
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#  identification      :string
#

class Register < ActiveRecord::Base
  	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  belongs_to :register_type
  belongs_to :inscription
end
