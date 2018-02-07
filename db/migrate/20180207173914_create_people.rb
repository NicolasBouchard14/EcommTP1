class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :name
      t.string :description
      t.string :role
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
