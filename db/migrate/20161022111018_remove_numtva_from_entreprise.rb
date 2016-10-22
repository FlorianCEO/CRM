class RemoveNumtvaFromEntreprise < ActiveRecord::Migration
  def change
    remove_column :entreprises, :numtva, :integer
  end
end
