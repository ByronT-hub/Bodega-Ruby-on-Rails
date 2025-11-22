class CreateMovements < ActiveRecord::Migration[8.1]
  def change
    create_table :movements do |t|
      t.references :producto, null: false, foreign_key: true
      t.string :movement_kind
      t.integer :quantity
      t.text :comment

      t.timestamps
    end
  end
end
