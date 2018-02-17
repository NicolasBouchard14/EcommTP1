class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :prenom
      t.string :nom
      t.datetime :dateNaissance
      t.string :nas
      t.references :addresses, foreign_key: true
      t.integer :nombreEnfants
      t.integer :compteTaxesProprietaire
    end
  end
end
