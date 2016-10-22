class AddEntrepriseIdToProspect < ActiveRecord::Migration
  def change
    add_column :prospects, :entreprise_id, :integer
  end
end
