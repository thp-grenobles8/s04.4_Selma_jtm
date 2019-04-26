class Dog < ApplicationRecord
  has_many :dogs_to_strolls
  has_many :strolls, through: :dogs_to_strolls
  belongs_to :city
end
