class Entreprise < ActiveRecord::Base
  has_many :prospects
  accepts_nested_attributes_for :prospects
end
