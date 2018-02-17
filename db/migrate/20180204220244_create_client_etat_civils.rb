class CreateClientEtatCivils < ActiveRecord::Migration[5.1]
  def change
    create_table :client_etat_civils do |t|
      t.references :etat_civils, foreign_key: true
      t.references :clients, foreign_key: true
      t.datetime :dateDebut
      t.datetime :dateFin
    end
  end
end
