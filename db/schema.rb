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

ActiveRecord::Schema.define(version: 20180204221222) do

  create_table "addresses", force: :cascade do |t|
    t.string "numeroCivique"
    t.string "rue"
    t.string "codePostal"
    t.string "ville"
    t.string "province"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "client_etat_civils", force: :cascade do |t|
    t.integer "etat_civils_id"
    t.integer "clients_id"
    t.datetime "dateDebut"
    t.datetime "dateFin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clients_id"], name: "index_client_etat_civils_on_clients_id"
    t.index ["etat_civils_id"], name: "index_client_etat_civils_on_etat_civils_id"
  end

  create_table "client_has_employeurs", force: :cascade do |t|
    t.integer "client_id"
    t.integer "employeur_id"
    t.datetime "dateDebut"
    t.datetime "dateFin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_client_has_employeurs_on_client_id"
    t.index ["employeur_id"], name: "index_client_has_employeurs_on_employeur_id"
  end

  create_table "client_has_enfants", force: :cascade do |t|
    t.integer "enfants_id"
    t.integer "clients_id"
    t.integer "lien"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clients_id"], name: "index_client_has_enfants_on_clients_id"
    t.index ["enfants_id"], name: "index_client_has_enfants_on_enfants_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "prenom"
    t.string "nom"
    t.datetime "dateNaissance"
    t.string "nas"
    t.integer "addresses_id"
    t.integer "nombreEnfants"
    t.integer "compteTaxesProprietaire"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["addresses_id"], name: "index_clients_on_addresses_id"
  end

  create_table "clients_has_conjoint", force: :cascade do |t|
    t.integer "clients_id"
    t.datetime "dateDebut"
    t.datetime "dateFin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clients_id"], name: "index_clients_has_conjoint_on_clients_id"
  end

  create_table "employeurs", force: :cascade do |t|
    t.string "name"
    t.integer "addresses_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["addresses_id"], name: "index_employeurs_on_addresses_id"
  end

  create_table "enfants", force: :cascade do |t|
    t.string "nom"
    t.string "prenom"
    t.datetime "dateNaissance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "etat_civils", force: :cascade do |t|
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "etudes", force: :cascade do |t|
    t.string "secteurEtudes"
    t.string "niveau"
    t.datetime "dateDebut"
    t.datetime "dateCompletion"
    t.integer "clients_id"
    t.integer "institutions_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clients_id"], name: "index_etudes_on_clients_id"
    t.index ["institutions_id"], name: "index_etudes_on_institutions_id"
  end

  create_table "institutions", force: :cascade do |t|
    t.string "nom"
    t.integer "addresses_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["addresses_id"], name: "index_institutions_on_addresses_id"
  end

end
