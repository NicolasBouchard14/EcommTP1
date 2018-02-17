class CreateClientHasConjoints < ActiveRecord::Migration[5.1]
  def change
    create_table :clients_has_conjoint do |t|
      t.references :clients, foreign_key: true
      t.datetime :dateDebut
      t.datetime :dateFin
    end

    add_foreign_key :clients_has_conjoint, :clients

  end
end
