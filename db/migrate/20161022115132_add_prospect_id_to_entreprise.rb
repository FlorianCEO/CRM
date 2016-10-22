class AddProspectIdToEntreprise < ActiveRecord::Migration
  def change
    add_column :entreprises, :prospect_id, :integer
  end
end
