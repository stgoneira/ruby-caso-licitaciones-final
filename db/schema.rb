# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_07_06_203845) do

  create_table "administradores", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_administradores_on_email", unique: true
    t.index ["reset_password_token"], name: "index_administradores_on_reset_password_token", unique: true
  end

  create_table "categorias", force: :cascade do |t|
    t.string "nombre", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "empresas", force: :cascade do |t|
    t.string "rut", null: false
    t.string "razon_social", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_empresas_on_email", unique: true
    t.index ["reset_password_token"], name: "index_empresas_on_reset_password_token", unique: true
    t.index ["rut"], name: "index_empresas_on_rut", unique: true
  end

  create_table "licitaciones", force: :cascade do |t|
    t.string "titulo", null: false
    t.string "descripcion", null: false
    t.integer "presupuesto", null: false
    t.integer "categoria_id", null: false
    t.integer "licitante_id", null: false
    t.integer "region_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["categoria_id"], name: "index_licitaciones_on_categoria_id"
    t.index ["licitante_id"], name: "index_licitaciones_on_licitante_id"
    t.index ["region_id"], name: "index_licitaciones_on_region_id"
  end

  create_table "licitantes", force: :cascade do |t|
    t.string "rut", null: false
    t.string "razon_social", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_licitantes_on_email", unique: true
    t.index ["reset_password_token"], name: "index_licitantes_on_reset_password_token", unique: true
    t.index ["rut"], name: "index_licitantes_on_rut", unique: true
  end

  create_table "postulaciones", force: :cascade do |t|
    t.string "propuesta", null: false
    t.integer "empresa_id", null: false
    t.integer "licitacion_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["empresa_id"], name: "index_postulaciones_on_empresa_id"
    t.index ["licitacion_id"], name: "index_postulaciones_on_licitacion_id"
  end

  create_table "regiones", force: :cascade do |t|
    t.string "nombre", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "licitaciones", "categorias"
  add_foreign_key "licitaciones", "licitantes"
  add_foreign_key "licitaciones", "regiones"
  add_foreign_key "postulaciones", "empresas"
  add_foreign_key "postulaciones", "licitaciones"
end
