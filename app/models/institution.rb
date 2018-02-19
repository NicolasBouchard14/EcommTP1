class Institution < ApplicationRecord
  has_one :addresse
  has_many :etudes
  has_many :clients, :through => :etudes
  accepts_nested_attributes_for :addresse
end
