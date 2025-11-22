class CreateProductos < ActiveRecord::Migration[8.1]
  def change
    create_table :productos do |t|
      t.string :nombre
      t.string :referencia
      t.text :descripcion

      t.timestamps
    end
  end
end
