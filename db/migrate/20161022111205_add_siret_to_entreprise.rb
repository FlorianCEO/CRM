class AddSiretToEntreprise < ActiveRecord::Migration
  def change
    add_column :entreprises, :siret, :string
  end
end
