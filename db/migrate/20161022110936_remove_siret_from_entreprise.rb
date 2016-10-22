class RemoveSiretFromEntreprise < ActiveRecord::Migration
  def change
    remove_column :entreprises, :siret, :integer
  end
end
