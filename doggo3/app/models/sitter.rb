class Sitter < ApplicationRecord
  has_many :dogs_to_stroll
  has_many :dogs, through: :dogs_to_stroll
  has_many :strolls
  belongs_to :city
end
