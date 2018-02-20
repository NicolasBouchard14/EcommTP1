class Employeur < ApplicationRecord
  belongs_to  :addresse
  has_many :client_has_employeurs, :dependent => :destroy
  has_many :clients, :through => :client_has_employeurs, :dependent => :destroy
end
