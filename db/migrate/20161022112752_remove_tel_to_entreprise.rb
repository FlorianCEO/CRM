class RemoveTelToEntreprise < ActiveRecord::Migration
  def change
    remove_column :entreprises, :tel, :integer
  end
end
