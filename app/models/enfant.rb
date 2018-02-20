class Enfant < ApplicationRecord
  has_many :client_has_enfants
  has_many :clients, through: :client_has_enfants
end
#inverse_of: :enfant
