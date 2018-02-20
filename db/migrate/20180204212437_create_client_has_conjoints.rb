class CreateClientHasConjoints < ActiveRecord::Migration[5.1]
  def change
    create_table :client_has_conjoints do |t|
      t.references :client, foreign_key: true
      t.datetime :dateDebut
      t.datetime :dateFin
    end

    add_foreign_key :clients_has_conjoint, :clients

  end
end
