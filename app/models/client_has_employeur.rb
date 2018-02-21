class ClientHasEmployeur < ApplicationRecord
  belongs_to :employeur
  belongs_to :client
  accepts_nested_attributes_for :employeur, :allow_destroy => true
  accepts_nested_attributes_for :client, :allow_destroy => true
end
