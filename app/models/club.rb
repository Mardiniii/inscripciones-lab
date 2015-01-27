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
	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
	  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  belongs_to :user
  has_one :president, dependent: :destroy
  has_many :fields, dependent: :destroy
  has_one :manager, dependent: :destroy
  has_many :registrations

  accepts_nested_attributes_for :president
  validates_associated :president
  accepts_nested_attributes_for :manager
  validates_associated :manager

end
