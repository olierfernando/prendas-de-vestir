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

ActiveRecord::Schema.define(version: 20140918230318) do

  create_table "carrito_de_compras", force: true do |t|
    t.string   "nombre_prodcuto"
    t.string   "codigo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "catalogos", force: true do |t|
    t.string   "camisa"
    t.string   "vestido"
    t.string   "ropa_interior"
    t.string   "faldas"
    t.string   "blusas"
    t.string   "jeans"
    t.string   "zapatos"
    t.string   "tacones"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "colores", force: true do |t|
    t.string   "nombre"
    t.string   "codigo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "datos_del_clientes", force: true do |t|
    t.string   "nombre"
    t.string   "cedula"
    t.string   "apellido"
    t.string   "telefono"
    t.string   "direccion"
    t.string   "email"
    t.string   "ciudad"
    t.string   "forma_de_pago"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fichas", force: true do |t|
    t.string   "nombre"
    t.string   "codigo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "productos", force: true do |t|
    t.integer  "ficha_id"
    t.string   "referencia"
    t.string   "precio"
    t.string   "cantidad"
    t.integer  "talla_id"
    t.integer  "color_id"
    t.integer  "terminado_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "productos", ["color_id"], name: "index_productos_on_color_id"
  add_index "productos", ["ficha_id"], name: "index_productos_on_ficha_id"
  add_index "productos", ["talla_id"], name: "index_productos_on_talla_id"
  add_index "productos", ["terminado_id"], name: "index_productos_on_terminado_id"

  create_table "tallas", force: true do |t|
    t.integer  "medida_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tallas", ["medida_id"], name: "index_tallas_on_medida_id"

  create_table "terminados", force: true do |t|
    t.string   "bordados"
    t.string   "estampado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
