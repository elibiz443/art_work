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

ActiveRecord::Schema[7.0].define(version: 2022_07_09_203656) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "art_texts", force: :cascade do |t|
    t.string "content"
    t.string "font_family", default: "'Luckiest Guy', cursive"
    t.string "font_style", default: "normal"
    t.integer "font_weight", default: 400
    t.string "text_decoration", default: "none"
    t.string "size", default: "2rem"
    t.string "color", default: "rgba(21, 67, 96, 1.0)"
    t.string "color_opacity", default: "1.0"
    t.string "background", default: "transparent"
    t.string "background_opacity", default: "1.0"
    t.integer "background_padding", default: 1
    t.string "border_radius", default: "none"
    t.integer "line_height", default: 3
    t.decimal "letter_spacing", default: "0.0"
    t.integer "text_shadow", default: 0
    t.string "text_shadow_color", default: "rgba(93, 173, 226, 1.0)"
    t.string "text_shadow_color_opacity", default: "1.0"
    t.integer "margin_top", default: 0
    t.integer "margin_left", default: 0
    t.string "transform", default: "rotate(0deg)"
    t.boolean "curve", default: false
    t.string "view_box", default: "0 0 600 600"
    t.bigint "art_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "arts", force: :cascade do |t|
    t.string "name", default: "Untitled"
    t.integer "width", default: 1350
    t.integer "height", default: 900
    t.string "background_color", default: "rgba(240, 248, 255, 1.0)"
    t.string "background_color_opacity", default: "1.0"
    t.string "radial_gradient", default: "none"
    t.string "radial_gradient_color", default: "rgba(0, 128, 128, 1.0)"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "icons", force: :cascade do |t|
    t.string "attachment"
    t.bigint "art_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos", force: :cascade do |t|
    t.string "attachment"
    t.bigint "art_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "selected_texts", force: :cascade do |t|
    t.integer "art_text_id"
    t.integer "art_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
