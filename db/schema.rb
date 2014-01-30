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

ActiveRecord::Schema.define(version: 20140130113102) do

  create_table "datafiles", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "registers", force: true do |t|
    t.string   "name_of_student"
    t.date     "date_of_birth"
    t.string   "gender"
    t.string   "father_or_guardian_name"
    t.string   "mother_name"
    t.string   "nationality"
    t.string   "religion"
    t.string   "caste"
    t.string   "student_category"
    t.string   "sibling_or_existing_parent"
    t.string   "child_with_special_needs"
    t.string   "locality"
    t.string   "residential_address"
    t.integer  "pincode",                                limit: 255
    t.string   "landmark"
    t.integer  "mobile_number",                          limit: 255
    t.integer  "landline_number",                        limit: 255
    t.string   "email_address"
    t.string   "father_or_guardian_qualification"
    t.string   "mother_qualification"
    t.string   "father_occupation_or_designation"
    t.string   "father_annual_income"
    t.string   "father_organisation_name"
    t.string   "father_organisation_address"
    t.string   "mother_occupation_or_designation"
    t.string   "mother_annual_income"
    t.string   "mother_organisation_name"
    t.string   "mother_organisation_address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "community_category"
    t.string   "birth_certificate_file_name"
    t.string   "birth_certificate_content_type"
    t.integer  "birth_certificate_file_size"
    t.datetime "birth_certificate_updated_at"
    t.string   "community_category_file_name"
    t.string   "community_category_content_type"
    t.integer  "community_category_file_size"
    t.datetime "community_category_updated_at"
    t.string   "category_certificate_file_name"
    t.string   "category_certificate_content_type"
    t.integer  "category_certificate_file_size"
    t.datetime "category_certificate_updated_at"
    t.string   "medical_certificate_file_name"
    t.string   "medical_certificate_content_type"
    t.integer  "medical_certificate_file_size"
    t.datetime "medical_certificate_updated_at"
    t.string   "address_proof_file_name"
    t.string   "address_proof_content_type"
    t.integer  "address_proof_file_size"
    t.datetime "address_proof_updated_at"
    t.string   "educational_certificate_file_name"
    t.string   "educational_certificate_content_type"
    t.integer  "educational_certificate_file_size"
    t.datetime "educational_certificate_updated_at"
    t.string   "qualification_certificate_file_name"
    t.string   "qualification_certificate_content_type"
    t.integer  "qualification_certificate_file_size"
    t.datetime "qualification_certificate_updated_at"
    t.string   "income_certificate_file_name"
    t.string   "income_certificate_content_type"
    t.integer  "income_certificate_file_size"
    t.datetime "income_certificate_updated_at"
    t.string   "upload_file_name"
    t.string   "upload_content_type"
    t.integer  "upload_file_size"
    t.datetime "upload_updated_at"
    t.string   "birth_certificate"
  end

end
