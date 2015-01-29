class ChangeNameToRegistrationModel < ActiveRecord::Migration
  def change
  	rename_table :registrations, :inscriptions
  end
end
