class AddNumtvaToEntreprise < ActiveRecord::Migration
  def change
    add_column :entreprises, :numtva, :string
  end
end
