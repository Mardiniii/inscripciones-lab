class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.references :categorie, index: true
      t.references :tournament, index: true
      t.references :club, index: true

      t.timestamps null: false
    end
    add_foreign_key :registrations, :categories
    add_foreign_key :registrations, :tournaments
    add_foreign_key :registrations, :clubs
  end
end
