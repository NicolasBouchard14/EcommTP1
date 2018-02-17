class CreateEmployeurs < ActiveRecord::Migration[5.1]
  def change
    create_table :employeurs do |t|
      t.string :name
      t.references :addresses, foreign_key: true
    end
  end
end
