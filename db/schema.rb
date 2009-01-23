# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090118143525) do

  create_table "assignments", :force => true do |t|
    t.string  "type"
    t.string  "disposition"
    t.integer "score"
    t.integer "person_id"
    t.integer "competition_id"
  end

  add_index "assignments", ["competition_id", "person_id"], :name => "index_assignments_on_competition_id_and_person_id", :unique => true
  add_index "assignments", ["type"], :name => "index_assignments_on_type"

  create_table "competitions", :force => true do |t|
    t.string   "type"
    t.string   "state",      :default => "Upcoming"
    t.datetime "stated_at"
    t.integer  "match_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "competitions", ["match_id"], :name => "index_competitions_on_match_id"
  add_index "competitions", ["type"], :name => "index_competitions_on_type"

  create_table "memberships", :force => true do |t|
    t.string   "disposition", :default => "Member"
    t.integer  "player_id"
    t.integer  "team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "memberships", ["player_id", "team_id"], :name => "index_memberships_on_player_id_and_team_id", :unique => true

  create_table "people", :force => true do |t|
    t.string   "type"
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "people", ["type"], :name => "index_people_on_type"

end
