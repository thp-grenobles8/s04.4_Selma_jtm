class AddCityRefToSitters < ActiveRecord::Migration[5.2]
  def change
    add_reference :sitters, :city, foreign_key: true
  end
end
