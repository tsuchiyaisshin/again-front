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

ActiveRecord::Schema.define(version: 2019_12_09_133742) do

  create_table "master_event_muscles", force: :cascade do |t|
    t.integer "master_event_id", null: false
    t.integer "muscle_id", null: false
    t.boolean "delete_flag", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["master_event_id"], name: "index_master_event_muscles_on_master_event_id"
    t.index ["muscle_id"], name: "index_master_event_muscles_on_muscle_id"
  end

  create_table "master_events", force: :cascade do |t|
    t.integer "training_type_id", null: false
    t.string "name", null: false
    t.text "discription"
    t.string "movie_tag"
    t.boolean "delete_flag", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["training_type_id"], name: "index_master_events_on_training_type_id"
  end

  create_table "muscles", force: :cascade do |t|
    t.integer "position_id", null: false
    t.string "name", null: false
    t.text "discription", null: false
    t.string "image_path"
    t.boolean "delete_flag", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["position_id"], name: "index_muscles_on_position_id"
  end

  create_table "positions", force: :cascade do |t|
    t.string "name", null: false
    t.boolean "delete_flag", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "image"
    t.string "nick_name", null: false
    t.float "height"
    t.text "comment"
    t.string "goal"
    t.boolean "delete_flag", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "relationships", force: :cascade do |t|
    t.integer "user_id"
    t.integer "trainer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trainer_id"], name: "index_relationships_on_trainer_id"
    t.index ["user_id", nil], name: "index_relationships_on_user_id_and_follow_id", unique: true
    t.index ["user_id"], name: "index_relationships_on_user_id"
  end

  create_table "reserv_logs", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "trainer_course_id", null: false
    t.integer "schedule_id", null: false
    t.boolean "delete_flag", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["schedule_id"], name: "index_reserv_logs_on_schedule_id"
    t.index ["trainer_course_id"], name: "index_reserv_logs_on_trainer_course_id"
    t.index ["user_id"], name: "index_reserv_logs_on_user_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.integer "trainer_profile_id", null: false
    t.date "reserv_date", null: false
    t.time "start_time", null: false
    t.time "end_time", null: false
    t.integer "reserv_user_id"
    t.boolean "delete_flag", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["reserv_user_id"], name: "index_schedules_on_reserv_user_id"
    t.index ["trainer_profile_id"], name: "index_schedules_on_trainer_profile_id"
  end

  create_table "trainer_courses", force: :cascade do |t|
    t.integer "trainer_profile_id", null: false
    t.string "image"
    t.string "name", null: false
    t.integer "number", null: false
    t.integer "lesson_time", null: false
    t.integer "personal_time", null: false
    t.integer "price", null: false
    t.string "discription", null: false
    t.string "personal_effect", null: false
    t.boolean "delete_flag", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trainer_profile_id"], name: "index_trainer_courses_on_trainer_profile_id"
  end

  create_table "trainer_profiles", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "image", null: false
    t.string "nick_name", null: false
    t.text "comment"
    t.text "public_relation"
    t.text "career"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_trainer_profiles_on_user_id"
  end

  create_table "training_logs", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "master_event_id", null: false
    t.datetime "recorded_at", null: false
    t.string "comment"
    t.boolean "delete_flag", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["master_event_id"], name: "index_training_logs_on_master_event_id"
    t.index ["user_id"], name: "index_training_logs_on_user_id"
  end

  create_table "training_sets", force: :cascade do |t|
    t.integer "training_log_id", null: false
    t.float "weight"
    t.integer "reps"
    t.integer "distance"
    t.time "training_time"
    t.boolean "delete_flag", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["training_log_id"], name: "index_training_sets_on_training_log_id"
  end

  create_table "training_types", force: :cascade do |t|
    t.string "name", null: false
    t.float "mets"
    t.boolean "delete_flag", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", limit: 191, null: false
    t.string "last_name", limit: 191, null: false
    t.string "email", limit: 191, null: false
    t.string "password_digest", null: false
    t.integer "gender", default: 1, null: false
    t.date "birthday"
    t.string "phone", null: false
    t.string "postcode", null: false
    t.integer "prefecture_code", null: false
    t.string "address_city", null: false
    t.string "address_street", null: false
    t.string "address_building", null: false
    t.integer "role", null: false
    t.string "remember_token", limit: 191
    t.boolean "delete_flag", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
