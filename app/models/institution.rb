class Institution < ApplicationRecord
  belongs_to :addresse
  has_many :etudes, :dependent => :destroy
  has_many :clients, :through => :etudes, :dependent => :destroy
  accepts_nested_attributes_for :addresse
end
