class AddNameAndDescriptionToTournamentModel < ActiveRecord::Migration
  def change
  	add_column :tournaments, :name, :string
  	add_column :tournaments, :description, :text
  end
end
