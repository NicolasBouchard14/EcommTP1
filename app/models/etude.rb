class Etude < ApplicationRecord
  belongs_to :client
  belongs_to :institution
  accepts_nested_attributes_for :institution
end
