class Entreprise < ActiveRecord::Base
  has_many :prospects, dependent: :destroy
  accepts_nested_attributes_for :prospects
end
