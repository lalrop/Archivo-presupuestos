class AddStatusToBudgets < ActiveRecord::Migration[6.1]
  def change
    add_column :budgets, :status, :string
  end
end
