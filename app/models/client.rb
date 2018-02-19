class Client < ApplicationRecord
  belongs_to :addresse, :class_name => 'Addresse'
  has_many :client_has_enfants
  has_many :enfants, :through => :client_has_enfants
  has_many :client_has_conjoints
  has_many :etudes
  has_many :institutions, :through => :etudes
  has_many :client_etat_civils
  has_many :etat_civils, :through => :client_etat_civils
  has_many :client_has_employeurs
  has_many :employeurs, :through => :client_has_employeurs
  accepts_nested_attributes_for :client_has_enfants, :allow_destroy => true
  accepts_nested_attributes_for :enfants, :allow_destroy => true
  accepts_nested_attributes_for :etat_civils, :allow_destroy => true
  accepts_nested_attributes_for :employeurs, :allow_destroy => true
  accepts_nested_attributes_for :addresse
  accepts_nested_attributes_for :etudes, :allow_destroy => true
end
