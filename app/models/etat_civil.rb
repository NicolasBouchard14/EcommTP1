class EtatCivil < ApplicationRecord
  has_many :client_etat_civils
  has_many :clients, :through => :client_etat_civils
end
