# == Schema Information
#
# Table name: field_hours
#
#  id           :integer          not null, primary key
#  open_hour    :time
#  closing_time :time
#  field_id     :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  day          :integer
#

class FieldHour < ActiveRecord::Base
  enum day: [:Lunes,:Martes,:Miercoles,:Jueves,:Viernes,:Sabado,:Domingo]
  belongs_to :field
end
