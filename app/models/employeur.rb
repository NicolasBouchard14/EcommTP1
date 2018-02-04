class Employeur < ApplicationRecord
  has_one :addresse
  has_many :client_has_employeurs
  has_many :clients, :through => :client_has_employeurs
end
