class Enfant < ApplicationRecord
  has_many :client_has_enfants, :dependent => :destroy
  has_many :clients, through: :client_has_enfants, :dependent => :destroy
  accepts_nested_attributes_for :client_has_enfants, :allow_destroy => true
  accepts_nested_attributes_for :clients, :allow_destroy => true
end
#inverse_of: :enfant
