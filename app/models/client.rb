class Client < ApplicationRecord
  belongs_to :addresse
  has_many :client_has_enfants
  has_many :enfants, :through => :client_has_enfants
  has_many :client_has_conjoints
  has_many :etudes
  has_many :institutions, :through => :etudes
  has_many :client_etat_civils
  has_many :etat_civils, :through => :client_etat_civils
  has_many :client_has_employeurs
  has_many :employeurs, :through => :client_has_employeurs
end
