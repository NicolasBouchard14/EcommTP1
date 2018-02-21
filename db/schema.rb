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
  end

  create_table "client_etat_civils", force: :cascade do |t|
    t.integer "etat_civil_id"
    t.integer "client_id"
    t.datetime "dateDebut"
    t.datetime "dateFin"
    t.index ["client_id"], name: "index_client_etat_civils_on_client_id"
    t.index ["etat_civil_id"], name: "index_client_etat_civils_on_etat_civil_id"
  end

  create_table "client_has_conjoints", force: :cascade do |t|
    t.integer "client_id"
    t.integer "conjoint_id"
    t.datetime "dateDebut"
    t.datetime "dateFin"
    t.index ["client_id"], name: "index_client_has_conjoints_on_client_id"
    t.index ["conjoint_id"], name: "index_client_has_conjoints_on_conjoint_id"
  end

  create_table "client_has_employeurs", force: :cascade do |t|
    t.integer "client_id"
    t.integer "employeur_id"
    t.datetime "dateDebut"
    t.datetime "dateFin"
    t.index ["client_id"], name: "index_client_has_employeurs_on_client_id"
    t.index ["employeur_id"], name: "index_client_has_employeurs_on_employeur_id"
  end

  create_table "client_has_enfants", force: :cascade do |t|
    t.integer "enfant_id"
    t.integer "client_id"
    t.integer "lien"
    t.index ["client_id"], name: "index_client_has_enfants_on_client_id"
    t.index ["enfant_id"], name: "index_client_has_enfants_on_enfant_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "prenom"
    t.string "nom"
    t.datetime "dateNaissance"
    t.string "nas"
    t.integer "addresse_id"
    t.integer "nombreEnfants"
    t.integer "compteTaxesProprietaire"
    t.index ["addresse_id"], name: "index_clients_on_addresse_id"
  end

  create_table "employeurs", force: :cascade do |t|
    t.string "name"
    t.integer "addresse_id"
    t.index ["addresse_id"], name: "index_employeurs_on_addresse_id"
  end

  create_table "enfants", force: :cascade do |t|
    t.string "nom"
    t.string "prenom"
    t.datetime "dateNaissance"
  end

  create_table "etat_civils", force: :cascade do |t|
    t.string "etat"
  end

  create_table "etudes", force: :cascade do |t|
    t.string "secteurEtudes"
    t.string "niveau"
    t.datetime "dateDebut"
    t.datetime "dateCompletion"
    t.integer "client_id"
    t.integer "institution_id"
    t.index ["client_id"], name: "index_etudes_on_client_id"
    t.index ["institution_id"], name: "index_etudes_on_institution_id"
  end

  create_table "institutions", force: :cascade do |t|
    t.string "nom"
    t.integer "addresse_id"
    t.index ["addresse_id"], name: "index_institutions_on_addresse_id"
  end

end
