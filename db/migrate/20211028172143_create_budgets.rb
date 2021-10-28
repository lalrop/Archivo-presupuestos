class CreateBudgets < ActiveRecord::Migration[6.1]
  def change
    create_table :budgets do |t|
      t.string :cliente
      t.string :vehiculo

      t.timestamps
    end
  end
end
