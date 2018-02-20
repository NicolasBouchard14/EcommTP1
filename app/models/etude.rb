class Etude < ApplicationRecord
  belongs_to :client
  belongs_to :institution
  accepts_nested_attributes_for :client, :allow_destroy => true
  accepts_nested_attributes_for :institution, :allow_destroy => true
end
