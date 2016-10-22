class AddTelToEntreprise < ActiveRecord::Migration
  def change
    add_column :entreprises, :tel, :string
  end
end
