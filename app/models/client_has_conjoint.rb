class ClientHasConjoint < ApplicationRecord
  belongs_to :client
  belongs_to :conjoint, :class_name => 'Client'
end
