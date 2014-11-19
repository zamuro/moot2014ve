# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141119193159) do

  create_table "admins", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "adults", force: true do |t|
    t.string   "nombre"
    t.integer  "region_id"
    t.integer  "distrito_id"
    t.date     "fechaNac"
    t.integer  "capacitacion_id"
    t.integer  "area_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ci"
    t.integer  "usuario_id"
  end

  create_table "alergies", force: true do |t|
    t.integer "usuario_id"
    t.boolean "alimentos"
    t.text    "detalle_alimento"
    t.boolean "picaduras"
    t.text    "detalle_picaduras"
    t.boolean "medicinas"
    t.text    "detalle_medicinas"
    t.text    "otras"
  end

  create_table "areas", force: true do |t|
    t.string "area", limit: nil
  end

  create_table "bancos", force: true do |t|
    t.text "banco"
  end

  create_table "capacitacions", force: true do |t|
    t.string "capacitacion", limit: nil
  end

  create_table "datos_registros", force: true do |t|
    t.integer  "usuario_id"
    t.text     "nombre"
    t.integer  "ci"
    t.integer  "credencial"
    t.date     "fechaNac"
    t.integer  "nivel_id"
    t.integer  "region_id"
    t.integer  "distrito_id"
    t.integer  "grupo_id"
    t.integer  "rama_id"
    t.integer  "unidad_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "datos_usuarios", force: true do |t|
    t.integer  "usuario_id"
    t.string   "tel1"
    t.string   "tel2"
    t.string   "correo"
    t.text     "direccion1"
    t.text     "direccion2"
    t.string   "contacto1"
    t.string   "contacto2"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tipo_sangre_id"
    t.integer  "talla_id"
  end

  create_table "distritos", force: true do |t|
    t.integer "region_id"
    t.string  "distrito",  limit: 64
  end

  create_table "enfermedades", force: true do |t|
    t.integer "usuario_id"
    t.boolean "diabetes"
    t.boolean "cancer"
    t.boolean "cardiopatias"
    t.boolean "hemofilia"
    t.boolean "asma"
    t.boolean "amigdalitis"
    t.boolean "hipotension"
    t.boolean "hipertension"
    t.boolean "epilepsia"
    t.boolean "sinusitis"
    t.text    "otras"
  end

  create_table "eses", force: true do |t|
    t.integer "usuario_id"
  end

  create_table "fichas_medicas", force: true do |t|
    t.integer  "usuario_id"
    t.integer  "vacuna_id"
    t.integer  "enfermedade_id"
    t.integer  "alergia_id"
    t.integer  "padecimiento_id"
    t.integer  "tiposangre_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grupos", force: true do |t|
    t.integer "region_id"
    t.integer "distrito_id"
    t.string  "grupo",       limit: 128
  end

  create_table "nivels", force: true do |t|
    t.string "nivel", limit: 32
  end

  create_table "padecimientos", force: true do |t|
    t.integer "usuario_id"
    t.boolean "lechina"
    t.boolean "hepatitis"
    t.boolean "rubeola"
    t.boolean "apendicitis"
    t.boolean "sarampion"
    t.boolean "insomnio"
    t.boolean "paperas"
    t.boolean "sonambulismo"
    t.boolean "estrenimiento"
    t.boolean "acidez"
    t.boolean "ulcera"
    t.boolean "asma"
    t.boolean "reflujo"
    t.boolean "bulimia"
    t.boolean "hiv"
    t.text    "otras"
  end

  create_table "pagos", force: true do |t|
    t.integer  "usuario_id"
    t.integer  "voucher",           limit: 8
    t.decimal  "monto"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "fecha"
    t.integer  "banco_id"
    t.integer  "datos_registro_id"
    t.integer  "datos_usuario_id"
  end

  create_table "ramas", force: true do |t|
    t.string "rama", limit: 12
  end

  create_table "regions", force: true do |t|
    t.string "region", limit: 32
  end

  create_table "routes", force: true do |t|
    t.string  "ruta",        limit: 64, null: false
    t.text    "descripcion"
    t.integer "capacidad",              null: false
    t.string  "responsable", limit: 64, null: false
  end

  create_table "rutas_surveys", force: true do |t|
    t.integer "usuario_id", null: false
    t.integer "ruta1",      null: false
    t.integer "ruta2"
    t.integer "ruta3"
  end

  create_table "tallas", force: true do |t|
    t.string "talla", limit: nil
  end

  create_table "tipo_sangres", force: true do |t|
    t.string "tipo", limit: 6
  end

  create_table "unidads", force: true do |t|
    t.integer "rama_id"
    t.string  "unidad",  limit: 16
  end

  create_table "usuarios", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin"
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true, using: :btree
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true, using: :btree

  create_table "usuarios_rutas", force: true do |t|
    t.integer "usuario_id"
    t.integer "ruta_id"
  end

  create_table "vacunas", force: true do |t|
    t.integer "usuario_id"
    t.boolean "tetanos"
    t.boolean "sarampion"
    t.boolean "rubeola"
    t.boolean "tiroidea"
    t.boolean "hepatitis"
    t.boolean "gripe"
    t.text    "otras"
  end

  create_table "views", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "admin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "views", ["email"], name: "index_views_on_email", unique: true, using: :btree
  add_index "views", ["reset_password_token"], name: "index_views_on_reset_password_token", unique: true, using: :btree

end
