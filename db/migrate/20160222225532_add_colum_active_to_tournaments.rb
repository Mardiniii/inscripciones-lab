class AddColumActiveToTournaments < ActiveRecord::Migration
  def change
    add_column :tournaments, :status, :boolean
  end
end
