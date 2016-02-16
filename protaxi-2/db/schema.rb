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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20160216071441) do

  create_table "clientes", :force => true do |t|
    t.string   "dni"
    t.string   "usuario"
    t.string   "password"
    t.string   "nombre"
    t.string   "apellido"
    t.integer  "movil"
    t.date     "nacimiento"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "distrito_destinos", :force => true do |t|
    t.string "nombredistrito"
  end

  create_table "distrito_origens", :force => true do |t|
    t.string "nombredistrito"
  end

  create_table "precios", :force => true do |t|
    t.float    "precioservicio"
    t.integer  "distrito_origen_id"
    t.integer  "distrito_destino_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "precios", ["distrito_destino_id"], :name => "index_precios_on_distrito_destino_id"
  add_index "precios", ["distrito_origen_id"], :name => "index_precios_on_distrito_origen_id"

  create_table "servicios", :force => true do |t|
    t.string   "direccionorigen"
    t.string   "direcciondestino"
    t.date     "fechaservicio"
    t.time     "horaservicio"
    t.integer  "pasajeros"
    t.integer  "cliente_id"
    t.integer  "precio_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "servicios", ["cliente_id"], :name => "index_servicios_on_cliente_id"
  add_index "servicios", ["precio_id"], :name => "index_servicios_on_precio_id"

end
