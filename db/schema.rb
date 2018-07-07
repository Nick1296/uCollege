# frozen_string_literal: true

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

ActiveRecord::Schema.define(version: 20_180_706_150_614) do
  create_table 'courses', force: :cascade do |t|
    t.string 'name'
    t.integer 'begin_year'
    t.integer 'end_year'
    t.string 'course_type'
    t.string 'material'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index %w[name begin_year end_year], name: 'index_courses_on_name_and_begin_year_and_end_year', unique: true
  end

  create_table 'enrollments', id: false, force: :cascade do |t|
    t.integer 'student_id', null: false
    t.integer 'course_id', null: false
    t.index %w[student_id course_id], name: 'index_enrollments_on_student_id_and_course_id', unique: true
  end

  create_table 'users', force: :cascade do |t|
    t.integer 'roles_mask'
    t.string 'type'
    t.string 'first_name'
    t.string 'last_name'
    t.string 'username'
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.integer 'sign_in_count', default: 0, null: false
    t.datetime 'current_sign_in_at'
    t.datetime 'last_sign_in_at'
    t.string 'current_sign_in_ip'
    t.string 'last_sign_in_ip'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
  end
end
