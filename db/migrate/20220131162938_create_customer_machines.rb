class CreateCustomerMachines < ActiveRecord::Migration[7.0]
  def change
    create_table :customer_machines do |t|
      t.references :customer, null: false, foreign_key: true
      t.references :machine, null: false, foreign_key: true
      t.string :serial_number

      t.timestamps
    end
  end
end
