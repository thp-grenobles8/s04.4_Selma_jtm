class DogsToStroll < ApplicationRecord
  belongs_to :stroll
  belongs_to :dog
  belongs_to :sitter
end
