# == Schema Information
#
# Table name: tournaments
#
#  id           :integer          not null, primary key
#  categorie_id :integer
#  start_date   :date
#  end_date     :date
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  name         :string
#  description  :text
#  deadline     :date
#

class Tournament < ActiveRecord::Base
  belongs_to :categorie
  has_many :inscriptions, dependent: :destroy

  def expired?
  	Date.current > deadline 
  end
end
