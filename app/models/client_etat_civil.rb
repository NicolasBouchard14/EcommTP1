class ClientEtatCivil < ApplicationRecord
  belongs_to :etat_civil
  belongs_to :client
end
