# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do |i|
  Addresse.create(numeroCivique: Faker::Address.building_number, rue: Faker::Address.street_name , codePostal: Faker::Address.zip,
                  ville: Faker::Address.city, province: Faker::Address.state)

  Client.create(prenom: Faker::Name.first_name, nom:  Faker::Name.last_name, dateNaissance: Faker::Date.birthday(14, 70),
                nas: Faker::Number.number(9), addresse_id: i, nombreEnfants: Faker::Number.between(1, 12),
                compteTaxesProprietaire: Faker::Number.between(1, 9999))

  ClientHasEnfant.create(client_id: Faker::Number.between(1, 5), enfant_id: Faker::Number.between(1, 5), lien: Faker::FamilyGuy.character)

  Enfant.create(prenom: Faker::Name.first_name, nom:  Faker::Name.last_name, dateNaissance: Faker::Date.birthday(14, 70))

  Institution.create(nom: Faker::Educator.university, addresse_id: Faker::Number.between(1, 3))

  Etude.create(secteurEtudes: Faker::Educator.course, niveau: 'Universitaire', dateDebut: Faker::Date.between(10.year.ago, 2.years.ago),
               dateCompletion: Faker::Date.between(2.years.ago, Date.today), client_id: Faker::Number.between(1, 5), institution_id: Faker::Number.between(1, 5) )
end