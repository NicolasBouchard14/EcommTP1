class CreateSubTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :sub_tasks do |t|
      t.string :name
      t.string :description
      t.boolean :done
      t.references :task, foreign_key: true

      t.timestamps
    end
  end
end
