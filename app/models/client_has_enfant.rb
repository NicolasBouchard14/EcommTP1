class ClientHasEnfant < ApplicationRecord
  belongs_to :enfant
  belongs_to :client
  accepts_nested_attributes_for :enfant, :allow_destroy => true
end
