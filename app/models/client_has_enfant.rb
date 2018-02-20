class ClientHasEnfant < ApplicationRecord
  belongs_to :enfant
  belongs_to :client
  enum lien: [:'Père/fils', :'Père/fille', :'Mère/fils', :'Mère/fille', :Autre]
  accepts_nested_attributes_for :enfant, :allow_destroy => true
end
