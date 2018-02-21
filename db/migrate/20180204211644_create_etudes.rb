class CreateEtudes < ActiveRecord::Migration[5.1]
  def change
    create_table :etudes do |t|
      t.string :secteurEtudes
      t.string :niveau
      t.datetime :dateDebut
      t.datetime :dateFin
      t.references :client, foreign_key: true
      t.references :institution, foreign_key: true
    end
  end
end
