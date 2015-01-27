class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.references :categorie, index: true
      t.date :start_date
      t.date :end_date

      t.timestamps null: false
    end
    add_foreign_key :tournaments, :categories
  end
end
