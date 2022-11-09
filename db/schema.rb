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

ActiveRecord::Schema.define(version: 2022_09_27_234626) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bestsellers", force: :cascade do |t|
    t.bigint "order_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    # t.index ["order_id"], name: "index_bestsellers_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "referencia_pedido"
    t.string "email_pedido"
    t.date "data_pagamento"
    t.string "nome_cliente"
    t.string "estado_pedido"
    t.float "valor_total"
    t.float "valor_produto"
    t.string "imagem_produto"
    t.string "nome_produto"
    t.string "categoria"
    t.float "valor_base"
    t.string "cidade"
    t.string "estado"
    t.string "endereco"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  # add_foreign_key "bestsellers", "orders"
end
