class ClientHasConjoint < ApplicationRecord
  belongs_to :client
  belongs_to :conjoint, :class_name => 'Client'
  accepts_nested_attributes_for :conjoint, :allow_destroy => true
end
