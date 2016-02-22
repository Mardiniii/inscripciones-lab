class ChangeNameToCategorieIdColumn < ActiveRecord::Migration
  def change
    if Tournament.column_names.include? 'categorie_id'
      rename_column :tournaments, :categorie_id, :category_id
    else
      add_column :tournaments, :category_id, :integer
    end
  end
end
