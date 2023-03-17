class RenameTypeColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :pokemons, :type, :type1
  end
end
