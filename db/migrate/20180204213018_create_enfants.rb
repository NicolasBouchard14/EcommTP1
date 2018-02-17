class CreateEnfants < ActiveRecord::Migration[5.1]
  def change
    create_table :enfants do |t|
      t.string :nom
      t.string :prenom
      t.datetime :dateNaissance
    end
  end
end
