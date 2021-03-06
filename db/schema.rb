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

ActiveRecord::Schema.define(version: 2022_02_09_145238) do

  create_table "checkpoint_categories", force: :cascade do |t|
    t.string "name"
    t.string "short_name"
    t.integer "order"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "checkpoints", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.integer "checkpoint_category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["checkpoint_category_id"], name: "index_checkpoints_on_checkpoint_category_id"
  end

  create_table "customer_machines", force: :cascade do |t|
    t.integer "customer_id", null: false
    t.integer "machine_id", null: false
    t.string "serial_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_customer_machines_on_customer_id"
    t.index ["machine_id"], name: "index_customer_machines_on_machine_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.integer "customer_machines_count"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "machines", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "checkpoints", "checkpoint_categories"
  add_foreign_key "customer_machines", "customers"
  add_foreign_key "customer_machines", "machines"
end
