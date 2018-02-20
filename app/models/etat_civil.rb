class EtatCivil < ApplicationRecord
  has_many :client_etat_civils, :dependent => :destroy
  has_many :clients, :through => :client_etat_civils, :dependent => :destroy
end
