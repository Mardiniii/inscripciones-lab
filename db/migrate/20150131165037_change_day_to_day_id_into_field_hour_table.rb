class ChangeDayToDayIdIntoFieldHourTable < ActiveRecord::Migration
  def change
  	rename_column :field_hours, :day, :day_id
  end
end
