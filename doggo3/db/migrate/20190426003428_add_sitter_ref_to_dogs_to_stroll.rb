class AddSitterRefToDogsToStroll < ActiveRecord::Migration[5.2]
  def change
    add_reference :strolls, :sitter, foreign_key: true
  end
end
