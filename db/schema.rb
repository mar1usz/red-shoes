ActiveRecord::Schema.define(version: 2020_08_20_102211) do

  enable_extension "plpgsql"

  create_table "brands", force: :cascade do |t|
    t.string "name"
  end

  create_table "shoes", force: :cascade do |t|
    t.bigint "brand_id", null: false
    t.string "name"
    t.string "color"
    t.integer "year"
    t.index ["brand_id"], name: "index_shoes_on_brand_id"
  end

  add_foreign_key "shoes", "brands"
end
