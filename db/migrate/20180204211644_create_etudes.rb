class CreateEtudes < ActiveRecord::Migration[5.1]
  def change
    create_table :etudes do |t|
      t.string :secteurEtudes
      t.string :niveau
      t.datetime :dateDebut
      t.datetime :dateCompletion
      t.references :clients, foreign_key: true
      t.references :institutions, foreign_key: true
    end
  end
end
