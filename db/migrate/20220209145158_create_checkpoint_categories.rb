class CreateCheckpointCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :checkpoint_categories do |t|
      t.string :name
      t.string :short_name
      t.integer :order

      t.timestamps
    end
  end
end
