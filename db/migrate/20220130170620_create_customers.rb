class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :customer_machines_count
      t.timestamps
    end
  end
end
