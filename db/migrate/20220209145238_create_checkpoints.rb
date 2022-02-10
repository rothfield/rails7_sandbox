class CreateCheckpoints < ActiveRecord::Migration[7.0]
  def change
    create_table :checkpoints do |t|
      t.string :name
      t.string :code
      t.references :checkpoint_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
