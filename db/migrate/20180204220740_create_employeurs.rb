class CreateEmployeurs < ActiveRecord::Migration[5.1]
  def change
    create_table :employeurs do |t|
      t.string :name
      t.references :addresse, foreign_key: true
    end
  end
end
