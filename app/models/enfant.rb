class Enfant < ApplicationRecord
  has_many :client_has_enfants, :dependent => :destroy
  has_many :clients, through: :client_has_enfants, :dependent => :destroy
end
