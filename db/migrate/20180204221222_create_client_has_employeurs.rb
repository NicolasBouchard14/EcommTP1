class CreateClientHasEmployeurs < ActiveRecord::Migration[5.1]
  def change
    create_table :client_has_employeurs do |t|
      t.references :client, foreign_key: true
      t.references :employeur, foreign_key: true
      t.datetime :dateDebut
      t.datetime :dateFin

      t.timestamps
    end
  end
end
