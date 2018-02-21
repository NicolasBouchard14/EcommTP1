class CreateClientHasConjoints < ActiveRecord::Migration[5.1]
  def change
    create_table :client_has_conjoints do |t|
      t.references :client, foreign_key: true
      t.references :conjoint
      t.datetime :dateDebut
      t.datetime :dateFin
    end

    add_foreign_key :client_has_conjoints, :clients, column: :conjoint_id
  end
end
