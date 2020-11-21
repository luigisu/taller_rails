class CreateDetalles < ActiveRecord::Migration[6.0]
  def change
    create_table :detalles do |t|
      t.integer :cantida
      t.references :prestamos, null: false, foreign_key: true
      t.references :libros, null: false, foreign_key: true

      t.timestamps
    end
  end
end
