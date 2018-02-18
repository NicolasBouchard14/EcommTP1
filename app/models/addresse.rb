class Addresse < ApplicationRecord
  has_many  :clients
  has_many :institutions
end
