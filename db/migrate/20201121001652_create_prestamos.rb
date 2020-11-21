class CreatePrestamos < ActiveRecord::Migration[6.0]
  def change
    create_table :prestamos do |t|
      t.date :fecha
      t.integer :estado
      t.string :usuarios
      t.string :references

      t.timestamps
    end
  end
end
