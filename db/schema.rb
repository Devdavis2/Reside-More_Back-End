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

ActiveRecord::Schema.define(version: 2019_08_23_105455) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contractors", force: :cascade do |t|
    t.string "company"
    t.string "first_name"
    t.string "last_name"
    t.string "street_address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "phone"
    t.string "email"
    t.string "specilization"
    t.string "contractor_license_number"
    t.string "insurance"
    t.string "insurance_type"
    t.string "coverage"
    t.string "experience"
    t.string "management_experience"
    t.string "employees"
    t.string "projects"
    t.string "past_projects"
    t.string "job_capacity"
    t.string "recent_jobs"
    t.string "sow"
    t.string "job_address"
    t.string "job_bid"
    t.string "materials_labor"
    t.string "warranties"
    t.string "warranties_length"
    t.string "sub_contractor"
    t.string "licensed_insured"
    t.string "electrician"
    t.string "plumber"
    t.string "certificates_licenses"
    t.string "bbb_coc"
    t.string "bankruptcy"
    t.string "communication"
    t.string "clean"
    t.string "lien_waiver"
    t.string "references"
    t.string "lead_source"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "investors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "street_address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "phone"
    t.string "email"
    t.string "personal_funds"
    t.string "ira_funds"
    t.string "business_funds"
    t.string "liquid_funds"
    t.string "length_terms"
    t.string "payments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "properties", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "street_address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "phone"
    t.string "email"
    t.string "asking_price"
    t.string "listed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
