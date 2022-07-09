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
    t.boolean "italic", default: false
    t.boolean "bold", default: false
    t.boolean "underline", default: false
    t.boolean "strikethrough", default: false
    t.string "size", default: "2rem"
    t.string "color", default: "#F5F5F5"
    t.string "color_opacity", default: "1.0"
    t.string "background", default: "#2F4F4F"
    t.string "background_opacity", default: "1.0"
    t.string "alignment", default: "left"
    t.string "line_height", default: "1"
    t.string "letter_spacing", default: "1"
    t.string "font_style", default: "none"
    t.string "text_shadow", default: "none"
    t.string "text_shadow_color", default: "#708090"
    t.string "position", default: "2 2 2 2"
    t.string "rotation", default: "none"
    t.string "transformation", default: "none"
    t.string "curve", default: "none"
    t.bigint "art_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "arts", force: :cascade do |t|
    t.string "name", default: "Untitled"
    t.integer "width", default: 1350
    t.integer "height", default: 900
    t.string "background_color", default: "#EBF5FB"
    t.string "background_color_opacity", default: "1.0"
    t.string "radial_gradient", default: "none"
    t.string "radial_gradient_color", default: "rgba(0, 255, 255, 1.0)"
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
