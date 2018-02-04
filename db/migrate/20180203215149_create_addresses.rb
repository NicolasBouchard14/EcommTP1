class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :numeroCivique
      t.string :rue
      t.string :codePostal
      t.string :ville
      t.string :province

      t.timestamps
    end
  end
end
