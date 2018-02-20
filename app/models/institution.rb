class Institution < ApplicationRecord
  belongs_to :addresse
  has_many :etudes, :dependent => :destroy
  has_many :clients, :through => :etudes, :dependent => :destroy
  accepts_nested_attributes_for :addresse, :allow_destroy => true
  accepts_nested_attributes_for :etudes, :allow_destroy => true
end
