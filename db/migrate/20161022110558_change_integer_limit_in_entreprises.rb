class ChangeIntegerLimitInEntreprises < ActiveRecord::Migration
  def change
    def change
     change_column :entreprises, :siret, :integer, limit: 8
   end
  end
end
