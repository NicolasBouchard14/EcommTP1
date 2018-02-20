class ClientEtatCivil < ApplicationRecord
  belongs_to :etat_civil
  belongs_to :client
  accepts_nested_attributes_for :etat_civil, :allow_destroy => true
end
