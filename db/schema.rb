# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_21_001931) do

  create_table "detalles", force: :cascade do |t|
    t.integer "cantida"
    t.integer "prestamos_id", null: false
    t.integer "libros_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["libros_id"], name: "index_detalles_on_libros_id"
    t.index ["prestamos_id"], name: "index_detalles_on_prestamos_id"
  end

  create_table "libros", force: :cascade do |t|
    t.string "titulo"
    t.string "autor"
    t.decimal "anyo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "multa", force: :cascade do |t|
    t.string "valor"
    t.string "decimal"
    t.date "fecha"
    t.integer "estado"
    t.integer "prestamos_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["prestamos_id"], name: "index_multa_on_prestamos_id"
  end

  create_table "prestamos", force: :cascade do |t|
    t.date "fecha"
    t.integer "estado"
    t.string "usuarios"
    t.string "references"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nombres"
    t.string "apellidos"
    t.string "direccion"
    t.string "telefono"
    t.string "login"
    t.string "pasword"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "detalles", "libros", column: "libros_id"
  add_foreign_key "detalles", "prestamos", column: "prestamos_id"
  add_foreign_key "multa", "prestamos", column: "prestamos_id"
end
