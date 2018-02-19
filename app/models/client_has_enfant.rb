class ClientHasEnfant < ApplicationRecord
  belongs_to :enfant
  belongs_to :client
  enum lien: [:'Père/fils', :'Père/fille', :'Mère/fils', :'Mère/fille:', :Autre]
end
