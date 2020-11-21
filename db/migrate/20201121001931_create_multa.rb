class CreateMulta < ActiveRecord::Migration[6.0]
  def change
    create_table :multa do |t|
      t.string :valor
      t.string :decimal
      t.date :fecha
      t.integer :estado
      t.references :prestamos, null: false, foreign_key: true

      t.timestamps
    end
  end
end
