class CreateEntreprises < ActiveRecord::Migration
  def change
    create_table :entreprises do |t|
      t.string :name
      t.integer :siret
      t.integer :numtva
      t.text :adresse
      t.integer :tel

      t.timestamps null: false
    end
  end
end
