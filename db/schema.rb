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

ActiveRecord::Schema.define(version: 20150625010600) do

  create_table "hack_apps", force: :cascade do |t|
    t.datetime "created_at",                                              null: false
    t.datetime "updated_at",                                              null: false
    t.integer  "user_id"
    t.integer  "hackathon_id"
    t.datetime "submitted_at"
    t.string   "first_name",                        default: ""
    t.string   "last_name",                         default: ""
    t.string   "email",                             default: ""
    t.string   "gender",                            default: ""
    t.integer  "age",                               default: 0
    t.string   "school",                            default: ""
    t.boolean  "do_you_need_travel_reimbursement?", default: false
    t.boolean  "is_this_your_first_hackathon?",     default: false
    t.string   "skills",                            default: ""
    t.text     "past_projects",                     default: ""
    t.text     "why_hack_arizona",                  default: ""
    t.string   "github",                            default: ""
    t.string   "linkedin",                          default: ""
    t.string   "website",                           default: ""
    t.string   "resume",                            default: ""
    t.string   "teammates",                         default: ""
    t.string   "tshirt_size",                       default: ""
    t.boolean  "accepted_code_of_conduct",          default: false
    t.string   "status",                            default: "Undecided"
    t.datetime "decision_date"
    t.integer  "decision_made_by"
    t.boolean  "favorite",                          default: false
    t.text     "note",                              default: ""
  end

  add_index "hack_apps", ["hackathon_id"], name: "hackathon_id_ix"
  add_index "hack_apps", ["user_id"], name: "user_id_ix"

  create_table "hackathons", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
