class Client < ApplicationRecord
  belongs_to :addresse, :class_name => 'Addresse', :dependent => :destroy
  has_many :client_has_enfants, :dependent => :destroy
  has_many :enfants, :through => :client_has_enfants, :dependent => :destroy
  has_many :client_has_conjoint, :dependent => :destroy
  has_many :etudes, :dependent => :destroy
  has_many :institutions, :through => :etudes, :dependent => :destroy
  has_many :client_etat_civils, :dependent => :destroy
  has_many :etat_civils, :through => :client_etat_civils, :dependent => :destroy
  has_many :client_has_employeurs, :dependent => :destroy
  has_many :employeurs, :through => :client_has_employeurs, :dependent => :destroy
  accepts_nested_attributes_for :client_has_enfants, :allow_destroy => true
  accepts_nested_attributes_for :enfants, :allow_destroy => true
  accepts_nested_attributes_for :client_etat_civils, :allow_destroy => true
  accepts_nested_attributes_for :etat_civils, :allow_destroy => true
  accepts_nested_attributes_for :client_has_employeurs, :allow_destroy => true
  accepts_nested_attributes_for :employeurs, :allow_destroy => true
  accepts_nested_attributes_for :client_has_conjoint, :allow_destroy => true
  accepts_nested_attributes_for :addresse, :allow_destroy => true
  accepts_nested_attributes_for :etudes, :allow_destroy => true
  accepts_nested_attributes_for :institutions, :allow_destroy => true
end
