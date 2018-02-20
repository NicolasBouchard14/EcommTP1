class Addresse < ApplicationRecord
  has_many  :clients, :dependent => :destroy
  has_many :institutions, :dependent => :destroy
end
