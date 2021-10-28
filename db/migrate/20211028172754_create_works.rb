class CreateWorks < ActiveRecord::Migration[6.1]
  def change
    create_table :works do |t|
      t.text :trabajo
      t.integer :precio
      t.references :budget, null: false, foreign_key: true

      t.timestamps
    end
  end
end
